import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:volkswagen/models/vw_model.dart';
import 'package:volkswagen/models/plant.dart';
import 'package:volkswagen/services/vw_service.dart';

enum SortType { none, byName, byYear, byUnits }

class ModelProvider with ChangeNotifier {
  final VWService _vwService = VWService();
  List<VWModel> _models = [];
  List<Plant> _plants = [];
  List<VWModel> _filteredModels = [];
  bool _isLoading = false;
  SortType _sortType = SortType.none;
  String? _selectedPlant;

  List<VWModel> get models => _filteredModels;
  List<VWModel> get allModels => _models;
  List<Plant> get plants => _plants;
  bool get isLoading => _isLoading;
  SortType get sortType => _sortType;
  String? get selectedPlant => _selectedPlant;

  ModelProvider() {
    fetchData();
  }

  Future<void> fetchModels() => fetchData();

  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();

    _models = await _vwService.getModels();
    _plants = await _vwService.getPlants();
    _filteredModels = _models;
    sort(SortType.none, notify: false);

    _isLoading = false;
    notifyListeners();
  }

  List<Plant> getAvailablePlants() {
    // Returns the list of plants, preserving the original order from the data source.
    return List<Plant>.from(_plants);
  }

  void filterByPlant(String? plant) {
    _selectedPlant = plant;
    search('');
  }

  List<VWModel> getModelsByIds(List<String> ids) {
    return _models.where((model) => ids.contains(model.id.toString())).toList();
  }

  int? _getStartYear(String productionYears) {
    final regExp = RegExp(r'\d{4}');
    final match = regExp.firstMatch(productionYears);
    if (match != null) {
      return int.tryParse(match.group(0)!);
    }
    return null;
  }

  Map<String, dynamic> searchByChassis(String chassisInput) {
    final cleanInput = chassisInput.replaceAll(RegExp(r'[\s.-]'), '');
    final chassisNumber = int.tryParse(cleanInput.replaceAll(RegExp(r'[^0-9]'), ''));

    if (chassisNumber == null) {
      return {'error': "El número de bastidor no és vàlid. Assegureu-vos que conté números." };
    }

    VWModel? bestMatchModel;
    Version? bestMatchVersion;
    int? bestMatchChassisFrom;

    for (var model in _models) {
      for (var version in model.versions) {
        final fromStr = version.chassisFrom?.replaceAll(RegExp(r'[^0-9]'), '');
        final chassisFrom = fromStr != null && fromStr.isNotEmpty ? int.tryParse(fromStr) : null;

        if (chassisFrom != null && chassisNumber >= chassisFrom) {
          if (bestMatchChassisFrom == null || chassisFrom > bestMatchChassisFrom) {
            bestMatchModel = model;
            bestMatchVersion = version;
            bestMatchChassisFrom = chassisFrom;
          }
        }
      }
    }

    if (bestMatchVersion != null && bestMatchModel != null && bestMatchChassisFrom != null) {
      final version = bestMatchVersion;
      final model = bestMatchModel;
      
      final toStr = version.chassisTo?.replaceAll(RegExp(r'[^0-9]'), '');
      final chassisTo = toStr != null && toStr.isNotEmpty ? int.tryParse(toStr) : null;

      if (chassisTo != null && chassisNumber > chassisTo) {
          return {'error': "No s'ha trobat cap model per a aquest número de bastidor." };
      }

      Map<String, dynamic> result = {
        'id': model.id,
        'Model': model.name,
        'Any del model': version.modelYear,
        'Anys de producció': model.productionYears,
        'Unitats produïdes': model.unitsProduced.toString(),
        'Planta de fabricació': model.manufacturingPlant,
      };
      
      if (chassisTo != null) {
          try {
            final startDate = DateTime.parse(version.dateFrom);
            final endDate = DateTime.parse(version.dateTo);

            final totalChassisInRange = chassisTo - bestMatchChassisFrom;
            final chassisOffset = chassisNumber - bestMatchChassisFrom;

            if (totalChassisInRange < 0) {
              return {'error': "Error en les dades: el rang del bastidor és invàlid." };
            }

            if (totalChassisInRange == 0) {
              result['Data de producció'] = "Aprox. ${DateFormat('d MMMM yyyy', 'ca').format(startDate)}";
              return result;
            }

            final productionDurationInDays = endDate.difference(startDate).inDays;
            
            if (productionDurationInDays < 0) {
              return {'error': "Error en les dades: el rang de dates és invàlid." };
            }

            final estimatedDayOffset = (chassisOffset / totalChassisInRange) * productionDurationInDays;
            
            final estimatedDate = startDate.add(Duration(days: estimatedDayOffset.round()));

            final formattedDate = DateFormat('d MMMM yyyy', 'ca').format(estimatedDate);

            result['Data de producció'] = "Aprox. $formattedDate";
            return result;

          } catch (e) {
            return {'error': "Hi ha hagut un error calculant la data per al model ${model.name}. Error: $e" };
          }
      } else {
        return result;
      }
    }

    return {'error': "No s'ha trobat cap model per a aquest número de bastidor." };
  }

  void search(String query) {
    List<VWModel> tempModels = List.from(_models);

    if (_selectedPlant != null && _selectedPlant!.isNotEmpty) {
      tempModels = tempModels.where((model) {
        final plantName = model.manufacturingPlant;
        // CORRECTED LOGIC: Check if the manufacturingPlant string CONTAINS the selected plant.
        return plantName != null && plantName.contains(_selectedPlant!);
      }).toList();
    }

    if (query.isNotEmpty) {
      final lowerCaseQuery = query.toLowerCase();
      final searchYear = int.tryParse(query);
      final searchChassis = int.tryParse(query.replaceAll(RegExp(r'[^0-9]'), ''));

      tempModels = tempModels.where((model) {
        final modelName = model.name.toLowerCase();
        if (modelName.contains(lowerCaseQuery)) {
          return true;
        }

        if (searchYear != null) {
          final yearsString = model.productionYears;
          final years = yearsString.split(RegExp(r'–|-'));

          final startYearStr = years.isNotEmpty ? years[0].trim() : '0';
          final startYear = int.tryParse(startYearStr);

          if (startYear != null) {
            if (years.length == 2) {
              final endYearStr = years[1].trim().toLowerCase();
              int? endYear;

              if (endYearStr == 'present') {
                endYear = DateTime.now().year;
              } else {
                endYear = int.tryParse(endYearStr);
              }

              if (endYear != null) {
                return searchYear >= startYear && searchYear <= endYear;
              }
            } else if (years.length == 1) {
              return searchYear == startYear;
            }
          }
        }

        if (searchChassis != null) {
          for (var version in model.versions) {
            final from = int.tryParse(version.chassisFrom?.replaceAll(RegExp(r'[^0-9]'), '') ?? '');
            final to = int.tryParse(version.chassisTo?.replaceAll(RegExp(r'[^0-9]'), '') ?? '');

            if (from != null && to != null) {
              if (searchChassis >= from && searchChassis <= to) {
                return true;
              }
            }
          }
        }

        return model.productionYears.contains(query);
      }).toList();
    }

    _filteredModels = tempModels;
    sort(_sortType, notify: false);
    notifyListeners();
  }

  void sort(SortType type, {bool notify = true}) {
    _sortType = type;
    switch (type) {
      case SortType.byName:
        _filteredModels.sort(
          (a, b) => a.name.compareTo(b.name),
        );
        break;
      case SortType.byYear:
        _filteredModels.sort((a, b) {
          final yearA = _getStartYear(a.productionYears) ?? 0;
          final yearB = _getStartYear(b.productionYears) ?? 0;
          return yearA.compareTo(yearB);
        });
        break;
      case SortType.byUnits:
        _filteredModels.sort((a, b) {
          return b.unitsProduced.compareTo(a.unitsProduced);
        });
        break;
      case SortType.none:
        _filteredModels.sort((a, b) => a.id.compareTo(b.id));
        break;
    }
    if (notify) {
      notifyListeners();
    }
  }
}

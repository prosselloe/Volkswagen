import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/services.dart';
import 'package:volkswagen/models/vw_model.dart';
import 'package:volkswagen/models/plant.dart';

class VWService {
  static final VWService _instance = VWService._internal();
  factory VWService() => _instance;
  VWService._internal();

  List<VWModel>? _models;
  List<Plant>? _plants;

  Future<List<VWModel>> getModels() async {
    if (_models == null) {
      await _loadModels();
    }
    return _models ?? [];
  }

  Future<List<Plant>> getPlants() async {
    if (_plants == null) {
      await _loadPlants();
    }
    return _plants ?? [];
  }

  Future<void> _loadPlants() async {
    try {
      final jsonString = await rootBundle.loadString('assets/data/plants.json');
      final jsonList = json.decode(jsonString) as List;
      _plants = jsonList.map((json) => Plant.fromJson(json)).toList();
    } catch (e, s) {
      developer.log(
        'Error loading or parsing plants.json',
        name: 'VWService',
        error: e,
        stackTrace: s,
      );
      _plants = [];
    }
  }

  Future<VWModel?> getModelById(int id) async {
    final models = await getModels();
    try {
      return models.firstWhere((model) => model.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<void> _loadModels() async {
    List<VWModel> loadedModels = [];
    final dataFiles = [
      'assets/data/db_1.json',
      'assets/data/db_2.json',
      'assets/data/db_3.json',
      'assets/data/db_4.json',
      'assets/data/db_5.json',
      'assets/data/db_6.json',
      'assets/data/db_7.json' // <-- Added db_7.json
    ];

    for (String filePath in dataFiles) {
      try {
        final jsonString = await rootBundle.loadString(filePath);
        final jsonList = json.decode(jsonString) as List;
        for (var jsonItem in jsonList) {
          try {
            loadedModels.add(VWModel.fromJson(jsonItem));
          } catch (e, s) {
            developer.log(
              'Error parsing model from $filePath',
              name: 'VWService',
              error: e,
              stackTrace: s,
            );
          }
        }
      } catch (e, s) {
        developer.log(
          'Error loading or parsing $filePath',
          name: 'VWService',
          error: e,
          stackTrace: s,
        );
      }
    }

    _models = loadedModels;
  }
}

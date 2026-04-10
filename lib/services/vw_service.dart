import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:volkswagen/models/vw_model.dart';
import 'package:volkswagen/models/plant.dart';

class VWService {
  static final VWService _instance = VWService._internal();
  factory VWService() => _instance;
  VWService._internal();

  List<VWModel>? _models;
  List<Plant>? _plants;

  final String _baseUrl =
      'https://raw.githubusercontent.com/prosselloe/Volkswagen/main/assets/data/';

  // Generic function to load data from remote with local fallback
  Future<String> _loadJsonData(String fileName) async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl$fileName'));
      if (response.statusCode == 200) {
        developer.log('Successfully loaded $fileName from remote repository', name: 'VWService');
        return utf8.decode(response.bodyBytes);
      } else {
        developer.log(
          'Failed to load $fileName from remote. Status code: ${response.statusCode}. Falling back to local assets.',
          name: 'VWService',
          level: 900, // Warning
        );
        return await rootBundle.loadString('assets/data/$fileName');
      }
    } catch (e, s) {
      developer.log(
        'Error loading $fileName from remote repository. Falling back to local assets.',
        name: 'VWService',
        error: e,
        stackTrace: s,
      );
      // Fallback to local asset
      try {
        return await rootBundle.loadString('assets/data/$fileName');
      } catch (localError, localStack) {
         developer.log(
          'FATAL: Error loading $fileName from local assets as well.',
          name: 'VWService',
          error: localError,
          stackTrace: localStack,
          level: 1200, // Severe
        );
        // Return an empty list as a string to prevent crashing the json.decode
        return '[]';
      }
    }
  }


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
      final jsonString = await _loadJsonData('plants.json');
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
      'db_1.json',
      'db_2.json',
      'db_3.json',
      'db_4.json',
      'db_5.json',
      'db_6.json',
      'db_7.json',
      'db_8.json'
    ];

    for (String fileName in dataFiles) {
      try {
        final jsonString = await _loadJsonData(fileName);
        final jsonList = json.decode(jsonString) as List;
        for (var jsonItem in jsonList) {
          try {
            loadedModels.add(VWModel.fromJson(jsonItem));
          } catch (e, s) {
            developer.log(
              'Error parsing model from $fileName',
              name: 'VWService',
              error: e,
              stackTrace: s,
            );
          }
        }
      } catch (e, s) {
        developer.log(
          'Error loading or parsing $fileName',
          name: 'VWService',
          error: e,
          stackTrace: s,
        );
      }
    }

    _models = loadedModels;
  }
}
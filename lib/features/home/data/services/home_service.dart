import 'dart:convert';
import 'package:flutter/services.dart';

class HomeService {
  Future<Map<String, dynamic>> getSounds() async {
    try {
      // Load the JSON file
      final String jsonString =
          await rootBundle.loadString('assets/data/sounds.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      return jsonData;
    } catch (e) {
      // Handle error appropriately
      throw Exception('Failed to load sounds: $e');
    }
  }
}

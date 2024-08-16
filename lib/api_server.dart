import 'dart:convert';
import 'package:flutter_task/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://www.raw-labs.com';

  Future<List<Challenge>> fetchChallenges() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data
            .map((json) => Challenge(
                  title: json['title'] ?? 'No Title',
                  description: json['body'] ?? 'No Description',
                ))
            .toList();
      } else {
        throw Exception('Failed to load challenges');
      }
    } catch (e) {
      print('Exception: $e');
      throw Exception('Failed to fetch challenges');
    }
  }
}

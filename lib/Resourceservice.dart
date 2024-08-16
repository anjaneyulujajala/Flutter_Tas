import 'package:http/http.dart' as http;
import 'dart:convert';

class ResourceService {
  Future<List<Map<String, dynamic>>> fetchResources() async {
    final response = await http
        .get(Uri.parse('https://www.youtube.com/watch?v=PG2f3GF5RlI'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data
          .map((item) => {
                'title': item['title'],
                'description': item['body'],
                'type': 'Article',
              })
          .toList();
    } else {
      throw Exception('Failed to load resources');
    }
  }
}

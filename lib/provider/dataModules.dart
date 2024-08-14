import 'dart:convert';
import 'package:http/http.dart' as http;
class Capsule {
  final String title;
  final String id;

  Capsule({required this.title, required this.id});

  factory Capsule.fromJson(Map<String, dynamic> json) {
    return Capsule(
      title: json['id'],
      id: json['name'],
    );
  }
}


Future<List<Capsule>> fetchCapsules() async {
  final response = await http.get(Uri.parse('https://www.valupaedia.com/kolog/capsules.php'));
  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
   // print(jsonData);
    return jsonData.map((json) => Capsule.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load capsules');
  }
}
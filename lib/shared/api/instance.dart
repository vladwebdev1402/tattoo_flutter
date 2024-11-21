import 'package:http/http.dart' as http;

class ApiInstance {
  static const domen = "192.168.0.18";
  static const String baseUrl = "http://$domen:3050/api";

  static Future<http.Response> get(String url,
      [Map<String, dynamic>? params]) async {
    final uri = Uri.parse(baseUrl + url);
    return await http.get(uri);
  }
}

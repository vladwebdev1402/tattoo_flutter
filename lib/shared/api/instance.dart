import 'package:http/http.dart' as http;
import 'package:tattoo_flutter/shared/lib/parse_params_to_uri.dart';

class ApiInstance {
  static const domen = "192.168.0.14";
  static const String baseUrl = "http://$domen:3050/api";

  static Future<http.Response> get(String url,
      [Map<String, dynamic>? params]) async {
    final uri = Uri.parse(baseUrl + url + parseParamsToUri(params));
    return await http.get(uri);
  }
}

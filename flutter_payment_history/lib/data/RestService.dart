import 'dart:convert';
import 'package:http/http.dart' as http;

class RestService {
  static final RestService _instance = RestService._constructor();
  factory RestService() {
    return _instance;
  }

  RestService._constructor();

  Uri baseUrl(String endPoint) => Uri.parse(
      "http://10.0.2.2:5001/flutter-payment-history/us-central1/app/$endPoint");

  Future get(String endpoint) async {
    final response = await http.get(baseUrl(endpoint));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response.statusCode;
  }

  Future post(String endpoint, {dynamic data}) async {
    final response = await http.post(baseUrl(endpoint),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw jsonDecode(response.statusCode.toString());
  }

  Future patch(String endpoint, {dynamic data}) async {
    final response = await http.patch(baseUrl(endpoint),
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future delete(String endpoint) async {
    final response = await http.delete(baseUrl(endpoint));

    if (response.statusCode == 200) {
      return;
    }
    throw response;
  }
}

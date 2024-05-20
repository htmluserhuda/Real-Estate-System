import 'dart:convert';
import 'package:http/http.dart' as http;

class Crud {
  Future<Map<String, dynamic>> postRequest(
      String url, Map<String, String> body) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(body),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print("faillllllllled");
        return {"status": "error", "message": "Failed to connect to server."};
      }
    } catch (e) {
      print(e);
      return {"status": "error", "message": "Failed to connect to server."};
    }
  }
}

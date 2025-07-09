
import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;

class FirebaseService {
  static const String _endpoint = 'https://firestore.googleapis.com/v1/projects/radhika-mineral-water/databases/(default)/documents/customers';

  static void addCustomer(String name, String area, String contact, String rate) async {
    final body = jsonEncode({
      "fields": {
        "name": {"stringValue": name},
        "area": {"stringValue": area},
        "contact": {"stringValue": contact},
        "rate": {"stringValue": rate}
      }
    });

    final response = await http.post(
      Uri.parse(_endpoint),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 200) {
      window.alert("Customer saved successfully!");
    } else {
      window.alert("Error: ${response.body}");
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  final String uri;
  Network(this.uri);

  Future<dynamic> getJsonData() async {
    var url = Uri.parse(uri);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String jsonData = response.body;
      var parsingData = jsonDecode(jsonData);
      return parsingData;
    } else {
      print(response.statusCode);
    }
  }
}

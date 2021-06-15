import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  final String uri;
  final String uri2;
  Network(this.uri, this.uri2);

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

  Future<dynamic> getAirData() async {
    var url = Uri.parse(uri2);
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

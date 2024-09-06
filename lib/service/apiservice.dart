import 'dart:convert';

import 'package:flutterblocapiintegration/model/Products.dart';
import 'package:flutterblocapiintegration/model/ResponseMain.dart';
import 'package:http/http.dart' as http;

class ApiService
{
  Future<List<Products>?> fetchData()
  async {
    final responseData = await http.get(Uri.parse("https://dummyjson.com/products"));
    if (responseData.statusCode == 200)
      {
        var jsonn = jsonDecode(responseData.body);
        var data = ResponseMain.fromJson(jsonn);
        var list = data.products;
        return list;
      }
  }
}

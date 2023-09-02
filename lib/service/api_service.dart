import 'dart:convert';

import 'package:api_testing/model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static getProductData() async {
    try {
    String token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI0MTMiLCJDdXJyZW50Q29tSWQiOiIxIiwibmJmIjoxNjkzMzA3MTUyLCJleHAiOjE2OTM5MTE5NTIsImlhdCI6MTY5MzMwNzE1Mn0.BQnXJn7L4e9TcTQ72UUXmLf7KTfpewT_d3uKN45iI-w";
    var link =
        "https://www.pqstec.com/InvoiceApps/Values/GetProductList?pageNo=1&amp;pageSize=100&amp;searchquery=boys";
    var responce = await http.get(Uri.parse(link), headers: {
      "Content-Type": "application/json",
      "Authorization": " Bearer $token"
    });
    print("asasaasasaasasa${responce.body}");
    if (responce.statusCode == 200) {
      var data = jsonDecode(responce.body);

      return List.from(data["ProductList"])
          .map((e) => ProductModel.fromMap(e))
          .toList();

    } else {
      print("Something is wrong");
    }
    } catch (e) {
      print("The problem, is $e");
    }
  }
}

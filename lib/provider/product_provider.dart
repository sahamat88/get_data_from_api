import 'package:api_testing/model/product_model.dart';
import 'package:api_testing/service/api_service.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> productList = [];

  Future<List<ProductModel>> getProductData() async {

  return  productList = await ApiService.getProductData();

  }
}

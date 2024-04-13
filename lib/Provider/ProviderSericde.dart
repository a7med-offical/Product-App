import 'package:flutter/material.dart';
import 'package:product/Model/ProductModel.dart';
import 'package:flutter/foundation.dart';

class ProviderProduct extends ChangeNotifier {
  List<ProductModel> productList = [];
    String searchQuery = '';

  void setProductList(List<ProductModel> products) {
    productList = products;
    notifyListeners();
  }
  void setSearchQuery(String query) {
    searchQuery = query;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  List<Product> _products = [];
  bool _loading = false;

  List<Product> get products => _products;
  bool get loading => _loading;

  final ApiService _apiService = ApiService();

  Future<void> fetchProducts() async {
    _loading = true;
    notifyListeners();

    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      print(e);
    }

    _loading = false;
    notifyListeners();
  }
}

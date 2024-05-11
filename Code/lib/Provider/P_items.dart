import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/items.dart';

class ProductProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> getProducts() async {
    isLoading = true;
    notifyListeners();

    final String token = '...'; 

  try {
    final response = await http.get(
      Uri.parse('http://146.190.109.66:8000/items/'),
      headers: {
        'Authorization': 'Bearer $token', 
      },
    );

    if (response.statusCode == 200) {
      _products = await productFromJson(response.body);
    } else {
      print('HTTP Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
    isLoading = false;
    notifyListeners();
  }
}

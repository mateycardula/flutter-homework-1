import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static const List<String> categories = ["men's clothing", "women's clothing", "jewelery"];
  static const String _baseUrl = "https://fakestoreapi.com/products/";

  static Future<List<Product>> getProducts() async {
    List<Product> fetchedProdcts = [];
    for (String category in categories){
      final response = await http.get(Uri.parse(_baseUrl + "category/" + category));
      if (response.statusCode == 200) {
          List<dynamic> data = jsonDecode(response.body);
          fetchedProdcts.addAll(data.map((json) => Product.fromJson(json)).toList());
      } else {
        throw Exception("Failed to load products");
      }
    }
    return fetchedProdcts;
  }

  static Future<Product> getProductById(int id) async {
    final response = await http.get(Uri.parse("$_baseUrl/$id"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Product.fromJson(data);
    } else {
      throw Exception("Failed to load product with ID $id");
    }
  }
}
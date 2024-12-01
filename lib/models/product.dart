import 'package:clothing_store/models/rating.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  // Factory constructor to create a Product from a JSON map
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(), // ensure price is a double
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }

  // Method to convert Product to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating.toJson(),
    };
  }
}
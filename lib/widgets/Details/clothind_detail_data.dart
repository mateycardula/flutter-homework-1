import 'package:clothing_store/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothingDetailData extends StatelessWidget {
  final Product product;

  const ClothingDetailData({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description
          Text(
            'Description:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            product.description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 16),

          // Price
          Text(
            'Price:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '\$${product.price.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 16),

          // Rating
          Text(
            'Rating:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              SizedBox(width: 4),
              Text(
                '${product.rating.rate} (${product.rating.count} reviews)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
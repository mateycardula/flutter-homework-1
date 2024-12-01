import 'package:clothing_store/models/rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clothing extends StatelessWidget{
  final int id;
  final String title;
  final String image;
  final Rating rating;
  final double price;

  const Clothing({super.key, required this.id, required this.title,
  required this.image, required this.rating, required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/details',
            arguments: Clothing(
              id: this.id,
              title: this.title,
              image: this.image,
              rating: this.rating,
              price: this.price,
            ),
          );
        },
      child:
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(12),
              // Ensures rounded corners
              child: Image.network(
                image,
                fit: BoxFit.scaleDown,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Container(

                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Text(
                          '${rating.rate} (${rating.count})',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
}
}

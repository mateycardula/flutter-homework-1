import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothingDetailImage extends StatelessWidget{
  final String image;
  const ClothingDetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      child: Image.network(image, fit: BoxFit.cover, alignment: Alignment.center),
    );
  }
}
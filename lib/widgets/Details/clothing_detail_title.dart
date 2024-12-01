import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothingDetailTitle extends StatelessWidget {
  final int id;
  final String name;

  const ClothingDetailTitle({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Text(name, style: TextStyle(
          fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}


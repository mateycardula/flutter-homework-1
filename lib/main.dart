import 'package:clothing_store/models/product.dart';
import 'package:clothing_store/screens/details_screen.dart';
import 'package:clothing_store/screens/home_screen.dart';
import 'package:clothing_store/service/api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Store',
      initialRoute: '/',
      routes: {
        '/' : (context) => const Home(),
        '/details': (context) => const Details(),
      },
    );
  }
}

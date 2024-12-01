import 'package:clothing_store/models/product.dart';
import 'package:clothing_store/service/api_service.dart';
import 'package:clothing_store/widgets/Products/clothing_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  List<Product> products = [];
  @override
  void initState() {
    super.initState();
    FetchProductsAsync();
  }

  void FetchProductsAsync() async{
    var fetched_products = await ApiService.getProducts();
    setState(() {
      products = fetched_products; // Update the products list and trigger a rebuild
    });  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu, color: Colors.white, size: 18)),
        title:  Text("Fake Store 211029", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
    ),
    body: ClothingGrid(products: products),
    );
  }
}
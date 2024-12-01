import 'package:clothing_store/models/product.dart';
import 'package:clothing_store/models/rating.dart';
import 'package:clothing_store/service/api_service.dart';
import 'package:clothing_store/widgets/Details/clothing_detail_image.dart';
import 'package:clothing_store/widgets/Details/clothing_detail_title.dart';
import 'package:clothing_store/widgets/Products/clothing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Details/clothind_detail_data.dart';
import '../widgets/Details/details_back_button.dart';

class Details extends StatefulWidget{
  const Details({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DetailsState();
  }
}

class _DetailsState extends State<Details>{
  Product product = Product(id: 0, title: "title", price: 2.0, description: "description", category: "category", image: "image", rating: Rating(rate: 2.0, count: 100));
  String id = '';
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final arguments = ModalRoute.of(context)?.settings.arguments as Clothing;
    id = arguments.id.toString();
    if (id.isNotEmpty) {
      getProductByIdAsync(id);
    }
  }

  void getProductByIdAsync(String id) async{
    var fetchedProduct = await ApiService.getProductById(int.parse(id));
    setState(() {
      product = fetchedProduct;
    });
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Clothing;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            ClothingDetailImage(image: arguments.image),
            ClothingDetailTitle(id: arguments.id, name: arguments.title),
            ClothingDetailData(product: product),
          ],
        ),
      ),
      floatingActionButton: const DetailBackButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

}
import 'package:clothing_store/models/product.dart';
import 'package:clothing_store/widgets/Products/clothing.dart';
import 'package:flutter/cupertino.dart';

class ClothingGrid extends StatefulWidget {
  final List<Product> products;

  const ClothingGrid({super.key, required this.products});

  @override
  State<StatefulWidget> createState() {
    return _ClothingGridState();
  }
}
class _ClothingGridState extends State<ClothingGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,  // Two items per row
        crossAxisSpacing: 8,
        mainAxisSpacing: 1,
        childAspectRatio: 1.5, // Adjust for better image proportion
      ),
      itemCount: widget.products.length,
      itemBuilder: (context, index) {
        final product = widget.products[index];
        return Clothing(id: product.id, title: product.title, image: product.image, rating: product.rating, price: product.price);
      },
    );
  }
}

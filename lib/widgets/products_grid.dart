import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/providers/products.dart';
import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx, index) => ChangeNotifierProvider(
        create: (c) => products[index],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemCount: products.length,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String routeName = '/product-detail';
  final Product product;

  ProductDetailScreen({this.product});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context).settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}

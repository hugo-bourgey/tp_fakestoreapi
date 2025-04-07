import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(product.image, height: 200),
            SizedBox(height: 20),
            Text(product.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('${product.price} €', style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 10),
            Text('Description fictive du produit ici.', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

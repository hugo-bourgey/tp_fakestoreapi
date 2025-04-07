import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/product_view_model.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ProductViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Produits')),
      body: vm.loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: vm.products.length,
              itemBuilder: (context, index) {
                final product = vm.products[index];
                return ListTile(
                  leading: Image.network(product.image, width: 50, height: 50),
                  title: Text(product.title),
                  subtitle: Text('${product.price} €'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailScreen(product: product),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}

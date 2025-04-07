import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_models/product_view_model.dart';
import 'views/product_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final vm = ProductViewModel();
        vm.fetchProducts(); // chargement initial
        return vm;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductListScreen(),
      ),
    );
  }
}

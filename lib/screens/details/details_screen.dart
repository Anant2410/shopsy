import 'package:flutter/material.dart';
import 'package:shopsy/models/product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: arguments.product.rating,
        ),
      ),
      body: Body(product: arguments.product),
    );
  }
}



//we need to pass the product to the details screen
// and we use name route so we need to create a argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

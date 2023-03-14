import 'package:flutter/material.dart';
import 'package:shopsy/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getproportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getproportionateScreenWidth(30)),
            const DiscountBanner(),
            SizedBox(height: getproportionateScreenWidth(30)),
            const Categories(),
            SizedBox(height: getproportionateScreenWidth(10)),
            const SpecialOffers(),
            SizedBox(height: getproportionateScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: getproportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}



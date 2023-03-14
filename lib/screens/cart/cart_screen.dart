import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopsy/components/default_button.dart';
import 'package:shopsy/constants.dart';
import 'package:shopsy/size_config.dart';

import '../../models/cart.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text("Your Cart", style: TextStyle(color: Colors.black)),
          Text("${demoCarts.length} items", style: Theme.of(context).textTheme.caption)
        ],
      ),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getproportionateScreenWidth(15),
        horizontal: getproportionateScreenWidth(30)
      ),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
        boxShadow: [BoxShadow(
          offset: const  Offset(0, -15),
          blurRadius: 20,
          color: const Color(0xFFDADADA).withOpacity(0.15)
        )]
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getproportionateScreenWidth(40),
                  width: getproportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Apply Coupon Code"),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor,)
              ],
            ),
            SizedBox(height: getProportinateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\$332.15",
                        style: TextStyle(fontSize: 16, color: Colors.black)
                      ),
                    ]
                  )
                ),
                SizedBox(
                  width: getproportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out", 
                    press: (){}
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

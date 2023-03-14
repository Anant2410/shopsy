import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/rounded_icon_button.dart';
import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getproportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
                iconData: Icons.arrow_back_ios,
                press: () => Navigator.pop(context)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
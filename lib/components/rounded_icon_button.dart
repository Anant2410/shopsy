import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.iconData,
    required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getproportionateScreenWidth(40),
      width: getproportionateScreenWidth(40),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    required this.SvgIcon
  });
  final String SvgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getproportionateScreenWidth(20),
        getproportionateScreenWidth(20),
        getproportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        SvgIcon,
        height: getProportinateScreenHeight(18),
      ),
    );
  }
}

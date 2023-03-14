import 'package:flutter/material.dart';
import 'package:shopsy/screens/splash/components/body.dart';
import 'package:shopsy/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

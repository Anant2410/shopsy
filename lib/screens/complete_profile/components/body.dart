import 'package:flutter/material.dart';
import 'package:shopsy/constants.dart';
import 'package:shopsy/size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getproportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete Your details or continue with the social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(height: getProportinateScreenHeight(30)),
              const Text(
                  "By Continuing You confirm that\n you agree with the T&C",
                  textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}

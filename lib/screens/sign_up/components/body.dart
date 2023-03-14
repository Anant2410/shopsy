import 'package:flutter/material.dart';
import 'package:shopsy/constants.dart';
import 'package:shopsy/size_config.dart';
import '../../../components/social_card.dart';
import 'sign_up.form.dart';

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
                "Register Account",
                style: headingStyle,
              ),
              const Text("Complete your details or \ncontinue with social media",
                  textAlign: TextAlign.center),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportinateScreenHeight(20),
              ),
              const Text(
                "By clicking this you confirm that you agree with T&C",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

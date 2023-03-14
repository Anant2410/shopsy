import 'package:flutter/widgets.dart';
import 'package:shopsy/screens/cart/cart_screen.dart';
import 'package:shopsy/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopsy/screens/details/details_screen.dart';
import 'package:shopsy/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopsy/screens/home/home_Screen.dart';
import 'package:shopsy/screens/login_success/login_success_screen.dart';
import 'package:shopsy/screens/otp/otp_screen.dart';
import 'package:shopsy/screens/profile/profile_screen.dart';
import 'package:shopsy/screens/sign_in/sign_in_screen.dart';
import 'package:shopsy/screens/sign_up/sign_up_screen.dart';
import 'package:shopsy/screens/splash/splash_screen.dart';

//we use name routes
//all our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName:(context) => CartScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen()
};

import 'package:flutter/material.dart';
import 'package:shamo/home/home_page.dart';
import 'package:shamo/home/main_page.dart';
import 'package:shamo/pages/HTTPREQUEST/http_post.dart';
import 'package:shamo/pages/cart_page.dart';
import 'package:shamo/pages/checkout_page.dart';
import 'package:shamo/pages/checkout_success.dart';
import 'package:shamo/pages/detail_chat.dart';
import 'package:shamo/pages/edit_profile_page.dart';
import 'package:shamo/pages/product_page.dart';
import 'package:shamo/pages/providers/learn_provider.dart';
import 'package:shamo/pages/providers/multi_provider.dart';
import 'package:shamo/pages/sign_in_page.dart';
import 'package:shamo/pages/sign_up_page.dart';
import 'package:shamo/pages/splash_pages.dart';
import 'package:shamo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        //'/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChat(),
        '/edit-profile': (context) => EditProfile(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkoutsuccess': (context) => CheckoutSuccess(),
        '/home': (context) => ProviderClass(),
        '/multi': (context) => MultiProviderClass(),
        '/post': (context) => Http_request(),
      },
    );
  }
}

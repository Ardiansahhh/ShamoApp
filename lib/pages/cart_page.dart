import 'package:flutter/material.dart';
import 'package:shamo/widgets/cart_card.dart';
import '../theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget emptyCart() {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/icon_empty_cart.png',
            width: 80,
          ),
          SizedBox(height: 20),
          Text(
            'Oops!, your cart is empty',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Let\'s find your favorite shoes',
            style: secondTextStyle,
          ),
          SizedBox(height: 20),
          Container(
            width: 152,
            height: 44,
            // padding: EdgeInsets.symmetric(
            //   vertical: 10,
            //   horizontal: 24,
            // ),
            child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: primaryColor),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )),
          )
        ],
      ));
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          CartCard(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Your Cart'),
        elevation: 0,
      ),
      body: content(), //emptyCart
    );
  }
}

import 'package:flutter/material.dart';
import '../theme.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: secondaryColor,
      onPressed: () {
        Navigator.pushNamed(context, '/cart');
      },
      child: Image.asset(
        'assets/icons/icon_cart.png',
        width: 20,
      ),
    );
  }
}

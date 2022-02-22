import 'package:flutter/material.dart';
import '../theme.dart';

Widget footer() {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account ? ',
          style: subtitleTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
        Text(
          "Sign Up",
          style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
        ),
      ],
    ),
  );
}

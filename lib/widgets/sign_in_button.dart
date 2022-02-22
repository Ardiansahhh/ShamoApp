import 'package:flutter/material.dart';
import '../theme.dart';

Widget SignInButton() {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.only(top: 30),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )
      ),
      onPressed: () {},
      child: Text('Sign In',style: primaryTextStyle.copyWith(
        fontSize: 16,
        fontWeight: medium
      ),),
    ),
  );
}

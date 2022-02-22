import 'package:flutter/material.dart';
import '../theme.dart';

Widget SignUpButton() {
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
      child: Text('Sign Up',style: primaryTextStyle.copyWith(
        fontSize: 16,
        fontWeight: medium
      ),),
    ),
  );
}

import 'package:flutter/material.dart';
import '../theme.dart';

class SignUpButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Text('Sign Up',style: primaryTextStyle.copyWith(
        fontSize: 16,
        fontWeight: medium
      ),),
    ),
  );
  }
}


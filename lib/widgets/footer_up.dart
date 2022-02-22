import 'package:flutter/material.dart';
import '../theme.dart';

class FooterUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account ? ',
          style: subtitleTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "Sign In",
            style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          ),
        ),
      ],
    ),
  );
  }
}
  


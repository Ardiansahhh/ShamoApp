import 'package:flutter/material.dart';
import '../theme.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign-up');
          },
          child: Text(
            "Sign Up",
            style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          ),
        ),
      ],
    ),
  );
  }
}
  


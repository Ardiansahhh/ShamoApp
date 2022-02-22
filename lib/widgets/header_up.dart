import 'package:flutter/material.dart';
import '../theme.dart';

Widget header_up() {
      return Container(
        margin: EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Register & Happy Shopping',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }
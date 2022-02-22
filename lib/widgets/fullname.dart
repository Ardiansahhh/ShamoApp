import 'package:flutter/material.dart';
import '../theme.dart';

Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Full Name",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
               
                  children: [
                    Image.asset(
                      'assets/icons/icon_realname.png',
                      width: 17.0,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your email address',
                          hintStyle: subtitleTextStyle,
                          fillColor: primaryColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
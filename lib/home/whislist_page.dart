import 'package:flutter/material.dart';
import '../theme.dart';

class WhislistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        elevation: 0,
        title: Text('Favorite Shoes'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon_wishlist_active.png',
              width: 74,
            ),
            SizedBox(height: 23),
            Text(
              'You don\'t have dream shoes ?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 12),
            Text('Let\'s find your favorite shoes', style: secondTextStyle,),
            SizedBox(height: 20),
            Container(
              height: 44,
              child: TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24), 
                backgroundColor: primaryColor, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
                ),
                onPressed: () {}
              , child: Text('Explore Shoes', style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),)),
            )
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        emptyWishlist(),
      ],
    );
  }
}

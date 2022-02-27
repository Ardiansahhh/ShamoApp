import 'package:flutter/material.dart';
import '../theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/icon_shop_logo.png',
                  width: 54,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoes Store',
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        'Good night, this item is on...',
                        style: secondTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondTextStyle.copyWith(fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 12),
            Divider(thickness: 1,
            color: Color(0xFF2B2939),),
          ],
        ),
      ),
    );
  }
}

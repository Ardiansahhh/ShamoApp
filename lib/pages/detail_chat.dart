import 'package:flutter/material.dart';
import 'package:shamo/widgets/chat_bubble.dart';
import '../theme.dart';

class DetailChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget head() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: bgColor1,
          centerTitle: false,
          title: Row(
            children: [Image.asset('assets/icons/icon_online.png')],
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget productPreview() {
      return Container(
        padding: EdgeInsets.all(10),
        width: 225,
        height: 75,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: bgColor5,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: primaryColor)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/image_shoes.png',
                width: 54,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COURT VISION RUNNING',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "\$54,89",
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/icons/icon_close.png',
              width: 22,
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: bgColor4,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextFormField(
                        //teksform membutuhkan lebar
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type message...',
                            hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/icons/icon_send_button.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget contentChat() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            chattext: 'Hi, This item is still available',
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            chattext: 'Good night, this item is only available in size 42 and 43',
            isSender: false,
            hasProduct: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/icons/icon_online.png',
              width: 47,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Store',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Online',
                  style: secondTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: chatInput(),
      body: contentChat(),
    );
  }
}

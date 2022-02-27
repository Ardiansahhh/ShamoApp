import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme.dart';

class ChatBubble extends StatelessWidget {
  String chattext;
  bool isSender, hasProduct;
  ChatBubble({required this.chattext, required this.isSender, required this.hasProduct});

  @override
  Widget build(BuildContext context) {

    Widget productView() {
      return Container(
        padding: EdgeInsets.all(12),
        width: 230,
        margin: EdgeInsets.only(
          bottom: 12,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(isSender ? 0 : 12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: isSender ? bgColor5 : bgColor4),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/image_shoes.png',
                    width: 70,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle,
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: purpleTextStyle,
                  ),
                ),
                SizedBox(width: 8),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      color: bgColor5,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productView() : SizedBox(),
          Row(
            mainAxisAlignment:
                (isSender) ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isSender ? 12 : 0),
                        topRight: Radius.circular(isSender ? 0 : 12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: isSender ? bgColor5 : bgColor4),
                  child: Text(
                    chattext,
                    style: primaryTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../theme.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: secondTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
                hintText: 'Katarina',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: secondTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
                hintText: '@katrine',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: secondTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
                hintText: 'Katarina@gmail.com',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icons/icon_image_profile.png'),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput()
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor3,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit Profile'),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        backgroundColor: bgColor1,
        actions: [
          IconButton(
            color: primaryColor,
            onPressed: () {},
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: content(),
    );
  }
}

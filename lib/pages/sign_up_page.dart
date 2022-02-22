import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/email_up.dart';
import 'package:shamo/widgets/footer.dart';
import 'package:shamo/widgets/footer_up.dart';
import 'package:shamo/widgets/fullname.dart';
import 'package:shamo/widgets/password.dart';
import 'package:shamo/widgets/sig_up_button.dart';
import 'package:shamo/widgets/sign_in_button.dart';
import 'package:shamo/widgets/username.dart';
import '../widgets/email.dart';
import '../widgets/header.dart';
import '../widgets/header_up.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: bgColor1,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header_up(),
                nameInput(),
                userInput(),
                emailUp(),
                PasswordInput(),
                SignUpButton(),
                Spacer(),
                FooterUp(),
              ],
            ),
          ),
        ));
  }
}

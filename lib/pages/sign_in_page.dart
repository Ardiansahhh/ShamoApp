import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/footer.dart';
import 'package:shamo/widgets/password.dart';
import 'package:shamo/widgets/sign_in_button.dart';
import '../widgets/email.dart';
import '../widgets/header.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
                header(),
                emailInput(),
                PasswordInput(),
                SignInButton(),
                Spacer(),
                Footer()
              ],
            ),
          ),
        ));
  }
}

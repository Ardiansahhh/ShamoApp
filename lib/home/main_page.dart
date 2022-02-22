import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cartbutton.dart';
import 'package:shamo/widgets/customebottomnav.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CartButton(),
      bottomNavigationBar: CustomeNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: bgColor1,
      body: Center(child: Text("Main page")),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Text("Hallo",style: secondTextStyle.copyWith(
         fontWeight: bold, fontSize: 50
       ),),
     ),
    );
  }
}
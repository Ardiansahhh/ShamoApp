import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Widgets_provider/applicationColor.dart';
import 'package:shamo/theme.dart';

class ProviderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Consumer<ApplicationColor>(
            builder: (context, value, _) => Text(
              'Provider State Management',
              style: TextStyle(color: value.color),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, value, child) => AnimatedContainer(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5),
                  duration: Duration(milliseconds: 500),
                  color: value.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text('AB'),
                  ),
                  Consumer<ApplicationColor>(
                    builder: (context, value, _) => Switch(
                      value: value.islightblue,
                      onChanged: (newValue) {
                        value.islightblue = newValue;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text('LB'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 170,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/multi');
                  },
                  child: Text(
                    'Multi Provider',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20),
              Container(
                width: 170,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/post');
                  },
                  child: Text(
                    'HTTP REQUEST',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

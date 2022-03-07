import 'package:flutter/material.dart';
import 'package:shamo/Widgets_provider/cart.dart';
import 'package:shamo/Widgets_provider/money.dart';
import 'package:shamo/theme.dart';
import 'package:provider/provider.dart';

class MultiProviderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(
          create: (contex) => Money(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (contex) => Cart(),
        ),
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Cart>(
          builder: (context, cart, child) => Consumer<Money>(
            builder: (context, money, child) => FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {
                if (money.balance >= 500) {
                  cart.quantity += 1;
                  money.balance -= 500;
                }
              },
              child: Icon(Icons.add_shopping_cart),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text('Multi Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Balance',
                    style: purpleTextStyle.copyWith(fontSize: 16),
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple[100],
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Money>(
                        builder: (context, value, _) => Text(
                          value.balance.toString(),
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Consumer<Cart>(
                    builder: (context, value, _) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apple (500) x ' + value.quantity.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          (500 * value.quantity).toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

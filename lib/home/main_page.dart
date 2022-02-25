import 'package:flutter/material.dart';
import 'package:shamo/home/chat_page.dart';
import 'package:shamo/home/home_page.dart';
import 'package:shamo/home/profile_page.dart';
import 'package:shamo/home/whislist_page.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cartbutton.dart';
import 'package:shamo/widgets/customebottomnav.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    Widget CustomeNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/icon_home.png',
                  width: 20,
                  color: currentIndex == 0 ? primaryColor : inActive,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/icon_chat.png',
                  width: 20,
                  color: currentIndex == 1 ? primaryColor : inActive,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/icon_wishlist.png',
                  width: 20,
                  color: currentIndex == 2 ? primaryColor : inActive,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/icon_profile.png',
                  width: 20,
                  color: currentIndex == 3 ? primaryColor : inActive,
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget bodies() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WhislistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      floatingActionButton: CartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomeNav(),
      backgroundColor: bgColor1,
      body: bodies(),
    );
  }
}

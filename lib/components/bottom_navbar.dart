import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/pages/home_page.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget> children = [
    HomePage(),
    Center(
      child: Text(
        "Ini adalah riwayat",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children.elementAt(_currentIndex),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 10,
              color: black10Color,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                size: 24,
              ),
              label: "Eksplor",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
                size: 24,
              ),
              label: "Riwayat",
            ),
          ],
          iconSize: 24,
          selectedItemColor: blackColor,
          unselectedItemColor: grey4thColor,
          selectedLabelStyle: w400greyTextStyle.copyWith(
            fontSize: 12,
          ),
          unselectedLabelStyle: w400greyTextStyle.copyWith(
            fontSize: 12,
          ),
          unselectedIconTheme: IconThemeData(color: grey4thColor),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: _currentIndex,
          selectedIconTheme: IconThemeData(color: greenColor),
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
        ),
      ),
    );
  }
}

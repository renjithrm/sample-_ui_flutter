// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoping_cart_ui/screens/app_manage.dart';
import 'package:shoping_cart_ui/screens/order_screen.dart';
import 'package:shoping_cart_ui/screens/product_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var count = 0;
  var screen = [
    ProductScreen(),
    OrderScreen(),
    AppManageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[count],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: count,
          showUnselectedLabels: false,
          onTap: (i) => setState(() {
                count = i;
              }),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              label: 'Manage Store',
            ),
          ]),
    );
  }
}

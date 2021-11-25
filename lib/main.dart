// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoping_cart_ui/screens/app_manage.dart';
import 'package:shoping_cart_ui/screens/main_screen.dart';
import 'package:shoping_cart_ui/screens/more_information.dart';
import 'package:shoping_cart_ui/screens/order_screen.dart';
import 'package:shoping_cart_ui/screens/payment_screen.dart';
import 'package:shoping_cart_ui/screens/premium_screen.dart';
import 'package:shoping_cart_ui/screens/product_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoreInformationScreen();
  }
}

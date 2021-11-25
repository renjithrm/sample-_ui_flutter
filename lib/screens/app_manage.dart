// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoping_cart_ui/screens/order_screen.dart';
import 'package:shoping_cart_ui/screens/product_screen.dart';

class AppManageScreen extends StatefulWidget {
  AppManageScreen({Key? key}) : super(key: key);

  @override
  State<AppManageScreen> createState() => _AppManageScreenState();
}

class _AppManageScreenState extends State<AppManageScreen> {
  Widget rowDiv = SizedBox(
    width: 8,
  );

  Widget div = SizedBox(
    height: 10,
  );

  var box1 = Colors.red[300];

  var box2 = Colors.green;

  var box3 = Colors.orange;

  var box4 = Colors.lightBlue[200];

  var box5 = Colors.grey;

  var box6 = Colors.pink[900];

  var box7 = Colors.red[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Store',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            children: [
              showCardBanner(
                Icons.announcement_outlined,
                'Marketing \nDesigns ',
                box1,
              ),
              showCardBanner(
                Icons.payment,
                'Oneline \nPayment ',
                box2,
              ),
              showCardBanner(
                Icons.offline_bolt,
                'Discount \nCoupons ',
                box3,
              ),
              showCardBanner(
                Icons.people_outline,
                'My \nCustomers ',
                box4,
              ),
              showCardBanner(
                Icons.qr_code,
                'Store QR \nCode ',
                box5,
              ),
              showCardBanner(
                Icons.money,
                'Extra \nCharges ',
                box6,
              ),
              showCardBanner(
                Icons.format_align_center,
                'Order \nForm ',
                box7,
              )
            ],
          ),
        ),
      ),
    );
  }

  showCardBanner(var cardIcon, String titleName, var cardColor) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    width: 60,
                    height: 60,
                    color: cardColor,
                    child: Icon(
                      cardIcon,
                      size: 50,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                titleName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

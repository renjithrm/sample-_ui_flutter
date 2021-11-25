// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoping_cart_ui/screens/payment_screen.dart';
import 'package:shoping_cart_ui/screens/premium_screen.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);
  Widget rowDiv = SizedBox(
    width: 8,
  );
  Widget div = SizedBox(
    height: 10,
  );
  Widget underline = Divider(
    thickness: 2,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Oder'),
        centerTitle: true,
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: orderPage(context),
      )),
    );
  }

  Widget orderPage(BuildContext context) => ListView(
        children: [
          Container(
            height: 50,
            // color: Colors.black,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'May 31,05:30',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 7,
                  ),
                ),
                Text(
                  'Delivered',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )
              ],
            ),
          ),
          underline,
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        '1ITEM',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.receipt),
                          label: Text(
                            'Receipt',
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 10,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/9a/45/64/9a4564109f2d00fdd95bbd889ce03d9c.jpg'))),
                  ),
                ),
                Positioned(
                    top: 75,
                    right: 7,
                    child: Text(
                      'Men s New Arrivals | PacSun',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                    )),
                Positioned(
                    top: 100,
                    left: 122,
                    child: Text(
                      '1 Piece',
                      style: TextStyle(fontSize: 15),
                    )),
                Positioned(
                    top: 120,
                    left: 122,
                    child: Text(
                      'Size:XL',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )),
                Positioned(
                    bottom: 0,
                    right: 10,
                    child: Text(
                      '\$100',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ))
              ],
            ),
          ),
          underline,
          SizedBox(
            height: 120,
            // color: Colors.blue,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Item total',
                      style: TextStyle(fontSize: 18),
                    )),
                    Text(
                      '\$100',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                div,
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Delivery',
                      style: TextStyle(fontSize: 18),
                    )),
                    Text(
                      'FREE',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    )
                  ],
                ),
                div,
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Grand Total',
                      style: TextStyle(fontSize: 20),
                    )),
                    Text(
                      '\$100',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),
          underline,
          Container(
              height: 300,
              // color: Colors.blue,
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Coustomer Details'.toUpperCase(),
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                        label: Text('Share'.toUpperCase()))
                  ],
                ),
                div,
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Name \n 123456789',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                    Icon(
                      Icons.call,
                      size: 35,
                      color: Colors.blue,
                    ),
                    rowDiv,
                    Icon(
                      Icons.chat,
                      color: Colors.green,
                      size: 35,
                    )
                  ],
                ),
                div,
                Row(
                  children: [
                    RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                            text: "Address",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "\n abcdef ghijkl mnopq",
                                  style: TextStyle(fontSize: 15))
                            ])),
                  ],
                ),
                div,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'city \n abcd'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text('Pincode \n 12345',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    )
                  ],
                ),
                div,
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Payment',
                      style: TextStyle(fontSize: 20),
                    )),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                      ),
                      child: Text(
                        'paid'.toUpperCase(),
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ])),
          underline,
          Container(
            height: 205,
            // color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'additional information'.toUpperCase(),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                div,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'state'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                      text: '\naassddff',
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                  TextSpan(
                      text: '\nEmail'.toUpperCase(),
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                  TextSpan(
                      text: '\nabcd@gmail.com',
                      style: TextStyle(fontSize: 25, color: Colors.grey))
                ])),
                div,
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: double.infinity,
                    child: OutlinedButton(
                        child: Text('Share receipt'),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => PaymentScreen()));
                        },
                        style: ButtonStyle()),
                  ),
                )
              ],
            ),
          )
        ],
      );
}

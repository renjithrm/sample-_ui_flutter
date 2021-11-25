// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  Widget rowDiv = SizedBox(
    width: 8,
  );
  Widget div = SizedBox(
    height: 10,
  );
  Widget underline = Divider(
    thickness: 2,
  );
  var url1 =
      'https://i.pinimg.com/564x/19/96/54/1996542916a93a545745d8b21a0ec3b7.jpg';
  var url2 =
      'https://i.pinimg.com/564x/5b/17/94/5b1794d081f9d1b2a7b40391f8b0d574.jpg';
  var url3 =
      'https://i.pinimg.com/564x/3a/f8/99/3af899f30b2a54c1f87beb9f0c205612.jpg';
  var url4 =
      'https://i.pinimg.com/564x/32/a4/76/32a476025e69a1c99120c29db513c8c1.jpg';
  var url5 =
      'https://i.pinimg.com/564x/3a/79/d8/3a79d84cde9ac1a8f32821d40436ee22.jpg';
  var url6 =
      'https://i.pinimg.com/564x/f8/f9/c3/f8f9c342414fe328d2ec4ac0c8490492.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info_outline,
                size: 30,
              ))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: SizedBox(
                    height: 190,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transaction Limit',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'A free limit upto which you will recive \nOnline payment',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          div,
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 150,
                                color: Colors.blue[800],
                              ),
                              Expanded(
                                child: Container(
                                  height: 5,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$3000 left out of \$10000',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          div,
                          ElevatedButton(
                              onPressed: () {}, child: Text('Increase Limit'))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              div,
              SizedBox(
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        rowDiv,
                        Expanded(
                          child: Text(
                            'Default Method',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Online payments',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    div,
                    Row(
                      children: [
                        rowDiv,
                        Expanded(
                          child: Text(
                            'Payment Profile',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Bank Accound',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    div,
                    underline,
                    div,
                    Row(
                      children: [
                        rowDiv,
                        Expanded(
                          child: Text(
                            'Payments Overview',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Life Line',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    div,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 160,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amound on Hold'.toUpperCase(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '\$0',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 160,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amound Rieceived'.toUpperCase(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '\$155',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transactions',
                        style: TextStyle(fontSize: 20),
                      ),
                      div,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[400]),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'On hold',
                                  style: TextStyle(color: Colors.grey[600]),
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'PayOuts(10)',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[400]),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Refunds',
                                  style: TextStyle(color: Colors.grey[600]),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              showBanner(url1, 'Orde #1234', 'dec-12-05:00', '\$100'),
              underline,
              showBanner(url2, 'Orde #2345', 'jan-20-07:30', '\$200'),
              underline,
              showBanner(url3, 'Orde #09877', 'nav-20-12:10', '\$150'),
              underline,
              showBanner(url4, 'Orde #76578', 'may-20-03:00', '\$70'),
              underline,
              showBanner(url5, 'Orde #64999', 'dec-20-04:30', '\$170'),
              underline,
              showBanner(url6, 'Orde #39757', 'Apr-20-09:40', '\$250'),
              underline,
            ],
          ),
        ),
      ),
    );
  }

  showBanner(
    var urls,
    String order,
    String dateTime,
    String rates,
  ) {
    return ListTile(
      leading: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(urls), fit: BoxFit.cover)),
      ),
      title: Text(order),
      subtitle: Text(dateTime),
      trailing: Column(
        children: [
          Text(
            rates,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          Text(
            'Successful',
            style: TextStyle(fontSize: 15, color: Colors.green),
          ),
        ],
      ),
    );
  }
}

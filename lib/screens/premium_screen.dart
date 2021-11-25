// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  PremiumScreen({Key? key}) : super(key: key);
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
        title: Text('Dukaan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
              ),
              Positioned(
                child: Container(
                  height: 150,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 30,
                left: 25,
                child: Card(
                  elevation: 8,
                  child: Container(
                    width: 300,
                    height: 200,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  Icons.shop,
                                  size: 30,
                                ),
                                radius: 25,
                              ),
                              rowDiv,
                              Text(
                                'Dukaan',
                                style: TextStyle(
                                    fontSize: 30, fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Get Dhukaan premium for just',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: '\n                      \$150/Year',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20))
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 350,
            // color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 20),
                  ),
                  div,
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.dashboard_customize_outlined,
                          size: 40,
                          color: Colors.blue,
                        ),
                        rowDiv,
                        Expanded(
                            child: Text(
                          'Custom Domain Name',
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 40,
                          color: Colors.blue,
                        ),
                        rowDiv,
                        Expanded(
                            child: Text(
                          'Varified seller badge',
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.laptop,
                          size: 40,
                          color: Colors.blue,
                        ),
                        rowDiv,
                        Expanded(
                            child: Text(
                          'Dukaan for PC',
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.headphones,
                          size: 40,
                          color: Colors.blue,
                        ),
                        rowDiv,
                        Expanded(
                            child: Text(
                          'Priority support',
                          style: TextStyle(fontSize: 20),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          underline,
          SizedBox(
            height: 280,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is Dukaan premium',
                    style: TextStyle(fontSize: 20),
                  ),
                  div,
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/ba/63/30/ba6330a6de2ae18fc2705429c50ce0bd.jpg'),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        size: 70,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          underline,
          Container(
            height: 120,
            child: Column(
              children: [
                Text(
                  'Need help? Get in touch',
                  style: TextStyle(fontSize: 20),
                ),
                div,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.message_outlined),
                            Text('Live chat')
                          ],
                        ),
                      )),
                      rowDiv,
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.call), Text('Phone call')],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
          underline,
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {}, child: Text('Select Domain'))),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Get premium'),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

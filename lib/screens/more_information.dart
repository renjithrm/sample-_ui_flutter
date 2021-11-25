// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MoreInformationScreen extends StatelessWidget {
  MoreInformationScreen({Key? key}) : super(key: key);
  Widget div = SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Information'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            tailBanner(
                tailIcon: Icon(Icons.share),
                nameTitle: 'Share dukaan App',
                lastIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
            div,
            tailBanner(
                tailIcon: Icon(Icons.message),
                nameTitle: 'Change Language',
                lastIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))),
            div,
            tailBanner(
                tailIcon: Icon(Icons.call),
                nameTitle: 'Chat Support',
                lastIcon: Switch(value: true, onChanged: (_) {})),
            div,
            tailBanner(tailIcon: Icon(Icons.lock), nameTitle: 'Privacy Policy'),
            div,
            tailBanner(
                tailIcon: Icon(Icons.star_border), nameTitle: 'Rates Us'),
            div,
            tailBanner(
                tailIcon: Icon(Icons.login_outlined), nameTitle: 'Sign Out')
          ],
        ),
      ),
    );
  }

  tailBanner({
    required Widget tailIcon,
    required String nameTitle,
    Widget? lastIcon,
  }) {
    return ListTile(
      leading: tailIcon,
      title: Text(
        nameTitle,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: lastIcon,
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);
  var url1 =
      'https://i.pinimg.com/564x/24/42/53/24425359946b4c7ae8c21aed69802603.jpg';
  var url2 =
      'https://i.pinimg.com/736x/df/95/1b/df951bb85a462fd4f1a02bdd32057df2.jpg';
  var url3 =
      'https://i.pinimg.com/564x/b3/9d/7c/b39d7cf9451577c5c0500c132648abbc.jpg';
  var url4 =
      'https://i.pinimg.com/564x/c4/b0/8d/c4b08d2620c08c04981ebde113170b1a.jpg';
  var url5 =
      'https://i.pinimg.com/564x/c5/2c/17/c52c175e83aac4b026b7c022ac886e9d.jpg';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'Product',
            ),
            Tab(
              text: 'Categories',
            )
          ]),
          title: const Text('Catalogue'),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: TabBarView(children: [
          protectedScreen(),
          categoryScreen(),
        ]),
      ),
    );
  }

  categoryScreen() {
    return Text('helo');
  }

  protectedScreen() {
    return ListView(
      children: [
        showCards(
          url1,
          Text('Out fits'),
          Text(
            '\$50',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        showCards(
            url2,
            Text('Little boy Out fit'),
            Text(
              '\$100',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        showCards(
            url3,
            Text('Antique Silver Bead'),
            Text(
              '\$200',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        showCards(
            url4,
            Text('Luxury fashion'),
            Text(
              '\$500',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        showCards(
            url5,
            Text('Man outfits'),
            Text(
              '\$200',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ))
      ],
    );
  }

  showCards(var urls, Text textInside, Text rates) {
    return Card(
      child: Container(
          width: 100,
          height: 210,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  child: SizedBox(
                    width: 100,
                    height: 120,
                    // color: Colors.black,
                    child: Image(
                      image: NetworkImage(urls),
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                  top: 10,
                  right: 8,
                  child: SizedBox(
                    width: 230,
                    height: 120,
                    // color: Colors.amber,
                    child: ListTile(
                      title: textInside,
                      subtitle: rates,
                      trailing: PopupMenuButton(itemBuilder: (_) => []),
                    ),
                  )),
              Positioned(
                top: 135,
                left: 10,
                child: SizedBox(
                  width: 334,
                  height: 70,
                  // color: Colors.green,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                      label: Text('Share Product')),
                ),
              ),
              Positioned(
                right: 10,
                top: 90,
                child: Switch(value: true, onChanged: (value) {}),
              ),
              Positioned(
                  top: 80,
                  left: 130,
                  child: Text(
                    'In stock',
                    style: TextStyle(color: Colors.green),
                  ))
            ],
          )),
    );
  }
}

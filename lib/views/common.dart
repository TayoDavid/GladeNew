import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glade_second/views/crypto.dart';
import 'package:glade_second/views/dashboard.dart';
import 'package:glade_second/views/home.dart';

List<BottomNavigationBarItem> navBarItems() {
  return const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.send),
      label: 'Send Money',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.credit_card),
      label: 'Card',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz_sharp),
      label: 'More',
    )
  ];
}

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text("Home"),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext content) => Home()))
        ),
        ListTile(
            title: Text("Dashboard"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext content) => Dashboard()))
        ),
        ListTile(
            title: Text("Crypto"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext content) => CryptoCurrency()))
        ),
      ],
    ),
  );
}
import 'package:flutter/material.dart';

AppBar myAppbar(String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color.fromRGBO(245, 246, 248, 1),
    actions: <Widget>[
      IconButton(
        onPressed: () => "",
        icon: Icon(Icons.shopping_cart),
        color: Colors.black,
      )
    ],
    leading: IconButton(
      onPressed: () => "",
      icon: Icon(Icons.arrow_back_ios),
      color: Color.fromRGBO(255, 105, 106, 1),
    ),
    title: Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Color.fromRGBO(92, 92, 104, 1)),
        ),
        Text(
          "JD 10.0",
          style: TextStyle(
              color: Color.fromRGBO(86, 93, 109, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        )
      ],
    ),
    centerTitle: true,
  );
}

import 'package:flutter/material.dart';
import 'first_page.dart';
import '../widgets/bottom_buttons_widget.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: PageView(
              children: <Widget>[
                PageLayout(title:"lace up skate",imagePath: "assets/shoe.jpg",),
                PageLayout(title:"lace up skate Shoes",imagePath: "assets/black_shoes.jpg",)],
            ),
          ),
        bottomButtonsWidget(context)
        ],
      ),
    );
  }
}

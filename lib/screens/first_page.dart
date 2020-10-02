import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/image_widget.dart';
import '../widgets/customized_tab_bar.dart';
import '../widgets/app_bar_widget.dart';

class PageLayout extends StatelessWidget {
  final String imagePath;
  final String title;
  PageLayout({this.imagePath,this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 246, 248, 1),
      appBar: myAppbar(title),
      body: Column(
        children: <Widget>[
          ImageWidget(imagePath:imagePath),
          SizedBox(
            height: 10,
          ),
          CustomizedTabBar(),
        ],
      ),
    );
  }
}

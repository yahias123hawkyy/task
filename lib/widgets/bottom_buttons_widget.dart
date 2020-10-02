import 'package:flutter/material.dart';

Widget bottomButtonsWidget(BuildContext context) {
  return Container(
    alignment: Alignment.bottomCenter,
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.08,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buttonWidget(
            Colors.white,
            Colors.black,
            "FAVOURITE",
            Color.fromRGBO(114, 120, 137, 1),
            Icon(
              Icons.favorite,
              color: Colors.white,
              size: 19,
            ),
            context),
        buttonWidget(
            Color.fromRGBO(255, 105, 106, 1),
            Colors.white,
            "ADD TO...",
            Colors.white,
            Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(255, 105, 106, 1),
              size: 17,
            ),
            context)
      ],
    ),
  );
}

Widget buttonWidget(Color contColor, Color textColor, String title,
    Color stackColor, Icon icon, BuildContext context) {
  Size mediaQuery = MediaQuery.of(context).size;

  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: mediaQuery.width * 0.4,
        height: mediaQuery.height * 0.1,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ], color: contColor, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 14,
                  backgroundColor: stackColor,
                ),
                icon
              ],
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    ),
  );
}

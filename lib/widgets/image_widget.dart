import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  ImageWidget({this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.46,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(imagePath))),
    );
  }
}

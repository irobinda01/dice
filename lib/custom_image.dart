import 'package:flutter/material.dart';

class CustomImage  extends StatelessWidget {
  const CustomImage(this.image, {super.key});

  final String image;

  @override
  Widget build(context){
    return Image.asset(
      image,
      width: 150,
    );
  }
}
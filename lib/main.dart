import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer([const Color.fromARGB(255, 176, 39, 130), const Color.fromARGB(255, 77, 119, 255)]),
      ),
    )
  );
}
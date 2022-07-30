import 'package:demo/bottomnavitionbar.dart';
import 'package:demo/prodact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'IconCustome.dart';
//import 'package:flutter_widgets/flutter_product_Card.dart';
import 'IconCustome.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bar(),
    );
  }
}

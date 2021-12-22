import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/bottom_navbar.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
      color: whiteColor,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/screenpw.dart';
import 'package:flutter_codes/widget/editprofilewithCupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: EditProfileWithCupertino(),
    );
  }
}
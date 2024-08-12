import 'package:flutter/material.dart';
import 'package:todo/screens/bulletScreen.dart';
import 'package:todo/screens/homeScreen.dart';
import 'package:todo/screens/inputScreen.dart';
import 'package:todo/screens/viewScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homeScreen(),
  ));
}

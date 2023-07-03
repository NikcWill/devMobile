import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondPage.dart';
import 'package:flutter_application_1/teste.dart';
import 'homePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    ),
  );
}

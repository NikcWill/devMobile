import 'package:flutter/material.dart';
import 'package:flutter_application_12/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
    ),
  );
}

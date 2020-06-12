import 'package:flutter/material.dart';
import 'package:myridex/screen/home.dart';
import 'package:myridex/utils/core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyRide',
      theme: ThemeData(
        primarySwatch: green,
      ),
      home: MyHomePage(title: 'MyRideX'),
    );
  }
}

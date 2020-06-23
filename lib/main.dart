import 'package:flutter/material.dart';
import 'package:myridex/screen/home.dart';
import 'package:myridex/states/app_state.dart';
import 'package:myridex/utils/core.dart';
import 'package:provider/provider.dart';


void main() {

  Provider.debugCheckInvalidValueType = null;

  return runApp(MultiProvider(providers: [
        Provider(create:(_) =>AppState(),)
  ],
    child: MyApp(),));
}

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

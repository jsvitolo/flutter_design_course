import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: HomeWidget(),
        ));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          alignment: Alignment.center,
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          )),
    );
  }
}

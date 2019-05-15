import 'package:flutter/material.dart';
import 'package:flutter_design_course/button-text-icon.dart';

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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_white.jpg"),
              fit: BoxFit.cover)),
      // color: Colors.white,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            "assets/logo_pizza.jpg",
          ),
          SizedBox(
            height: 10,
          ),
          ButtonTextIcon(
            color: Colors.red,
            iconData: Icons.add_a_photo,
            text: "Login com Google",
          ),
          ButtonTextIcon(
              color: Colors.blue,
              iconData: Icons.add_circle_outline,
              text: "Login com Facebook"),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                color: Colors.cyan,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.indigo,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(3, 5),
                  blurRadius: 7)
            ]),
        width: double.infinity,
        height: 50,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(3.0, 5.0),
                  blurRadius: 7)
            ]),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          "Text",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

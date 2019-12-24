import 'dart:async';

import 'package:flutter/material.dart';
import './dashboard/utility.dart';
import './register.dart';
import './ui/login_page.dart';
import './dashboard/list.dart';
import './dashboard/add.dart';

import 'dashboard/dashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => LoginPage(),
      '/dashboard': (BuildContext context) => MenuDashboardPage(),
      '/register': (BuildContext context) => Register(),
//      '/list': (BuildContext context) => List(),
//      '/add': (BuildContext context) => Add(),
//      '/utility': (BuildContext context) => Utility(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
//          Container(
//            decoration: BoxDecoration(
//                gradient: LinearGradient(
//              colors: [
//                Color.fromRGBO(22, 34, 42, 1),
//                Color.fromRGBO(58, 96, 115, 1)
//              ],
//              begin: Alignment.topCenter,
//              end: Alignment.bottomCenter,
//            )),
//          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/background.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/img/logo.png'),
              ),
              Text(
                'Welcome to MAMTE',
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

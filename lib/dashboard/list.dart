import 'package:flutter/material.dart';
import 'package:the_gorgeous_login/ui/navigation_bar.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('this is the list page', textScaleFactor: 2)),
    );
  }
}

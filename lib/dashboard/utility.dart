import 'package:flutter/material.dart';

class Utility extends StatefulWidget {
  @override
  _UtilityState createState() => _UtilityState();
}

class _UtilityState extends State<Utility> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Center(child: Text('this is the Utility page', textScaleFactor: 2)),
    );
  }
}

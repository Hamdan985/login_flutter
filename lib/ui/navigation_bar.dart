import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

int _page = 0;
GlobalKey _bottomNavigationKey = GlobalKey();

class Custom_Navigation_Bar extends StatefulWidget {
  @override
  _Custom_Navigation_BarState createState() => _Custom_Navigation_BarState();
}

class _Custom_Navigation_BarState extends State<Custom_Navigation_Bar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      backgroundColor: Colors.indigo,
      items: <Widget>[
        Icon(Icons.list, size: 30),
        Icon(Icons.add, size: 30),
        Icon(Icons.compare_arrows, size: 30),
      ],
      onTap: (index) {
        print(index);
        if (index == 0) {
          final CurvedNavigationBarState navBarState =
              _bottomNavigationKey.currentState;
          navBarState.setPage(0);
          Navigator.of(context).pushNamed('/list');
        } else if (index == 1) {
          final CurvedNavigationBarState navBarState =
              _bottomNavigationKey.currentState;
          navBarState.setPage(1);
          Navigator.of(context).pushNamed('/add');
        } else if (index == 2) {
          final CurvedNavigationBarState navBarState =
              _bottomNavigationKey.currentState;
          navBarState.setPage(2);
          Navigator.of(context).pushNamed('/utility');
        }
      },
    );
  }
}

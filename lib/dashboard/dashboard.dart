import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'add.dart';
import 'list.dart';
import 'utility.dart';

final Color backgroundColor = Colors.indigo;
int _page = 0;
GlobalKey _bottomNavigationKey = GlobalKey();

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage> {
  double screenWidth, screenHeight;

  Widget _showPage = Add();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return List();
        break;
      case 1:
        return Add();
        break;
      case 2:
        return Utility();
        break;

      default:
        return Container(
          child: Center(child: Text('nO PAGES FOUND', textScaleFactor: 10)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        key: _bottomNavigationKey,
        backgroundColor: Colors.indigo,
        items: <Widget>[
          Icon(
            Icons.list,
            size: 30,
          ),
          Icon(Icons.add, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
//        animationCurve: Curves.easeInOutCirc,
        onTap: (index) {
          print(index);
          setState(() {
            _page = index;
            _showPage = _pageChooser(_page);
          });
        },
      ),
      body: Column(
        children: <Widget>[
          topBar(context),
          _showPage,
        ],
      ),
    );
  }

  Widget topBar(context) {
    return Material(
//        borderRadius: BorderRadius.circular(40),
      elevation: 8,
      color: backgroundColor,
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 48),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/img/logo.png'),
                  height: 50,
                  width: 50,
                ),
                Text(
                  'My Cards',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                InkWell(
                  child: Icon(
                    Icons.power_settings_new,
                    size: 30,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

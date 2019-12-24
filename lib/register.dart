import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final name = routeArgs['name'];
    final email = routeArgs['email'];
    final password = routeArgs['password'];
    final confirmPassword = routeArgs['confirmPassword'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Text(name)),
            Center(child: Text(email)),
            Center(child: Text(password)),
            Center(child: Text(confirmPassword)),
          ],
        ),
      ),
    );
  }
}

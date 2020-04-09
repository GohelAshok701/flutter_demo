import 'package:flutter/material.dart';
import 'package:flutterdemo/base_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'dashboard_screen.dart';

class LoginScreen extends base_screen {
  final _email = TextEditingController();
  final _passeord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: _email,
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        TextField(
                          controller: _passeord,
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                        RaisedButton(
                          child: Text("Login"),
                          onPressed: () {
                            loginClick(context);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }

  void loginClick(BuildContext context) {
    if (_email.text.trim().isEmpty) {
      showMessage("Please enter email");
    } else if (_passeord.text.trim().isEmpty) {
      showMessage("Please enter password");
    } else {
      showMessage("Login successfully");

      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen()));
    }
  }
}

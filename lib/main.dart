import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home.dart';

class MyHomePage extends StatelessWidget {
  final _email = TextEditingController();
  final _passeord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute()),
      );
    }
  }

  void showMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1);
  }
}

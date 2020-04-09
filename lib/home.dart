import 'package:flutter/material.dart';
import 'package:flutterdemo/base.dart';

class SecondRoute extends base {
  final List<String> _listViewData = [
    "Ashok Gohel",
    "Ashvin Gohel",
    "Mahendra Gohel",
    "Ramdev Gohel",
    "Vishnu Gohel"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Home"),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: _listViewData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => showMessage(_listViewData[index]),
                child: ItemList(name: _listViewData[index]),
              );
            },
          )),
    );
  }
}

class ItemList extends StatelessWidget {
  ItemList({Key key, this.name}) : super(key: key);
  final String name;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 100,
        child: Card(
            color: Colors.orange,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ))
                ])));
  }
}

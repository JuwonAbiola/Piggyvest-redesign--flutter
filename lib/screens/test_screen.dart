import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
          Column(
                    mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text('In progress',style: TextStyle(
                fontWeight:FontWeight.w800,
                fontSize:60
              ),)
            ]
          )
        ]),
    );
  }
}
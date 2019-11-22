import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(new MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
        backgroundColor: Colors.pink[400],
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hey Kamz',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'Click',
        ),
        backgroundColor: Colors.pink[400],
      ),
    );
  }
}


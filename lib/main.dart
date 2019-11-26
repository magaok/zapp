import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MaterialApp(
  home: CreateRequest(),
));

class CreateRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.purpleAccent]
        ),
        title: Text('CREATE REQUEST'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: 'Request Type',
                  labelText: 'Enter request type'
              ),
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Request Description',
                labelText: 'Enter request description',
              ),
            ),
            SizedBox(height: 10.0,
            ),
            Container(
              child: CustomButton( title:'Submit', onPressed: () {}
              ),
            ),
          ],
        ),
      ),
    );
  }
}



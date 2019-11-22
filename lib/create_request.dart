import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(new MaterialApp(
  title: 'Forms in Flutter',
  home: new LoginPage(),
));

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: GradientAppBar(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.purpleAccent]
        ),
         title: new Text('CREATE REQUEST'),
        centerTitle: true,
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                decoration: InputDecoration(
                  hintText: 'Request Type',
                  labelText: 'Enter request type'
                ),
              ),
              new TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Request Description',
                  labelText: 'Enter request description',
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: CustomButton( title:'Submit', onPressed: () {}
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
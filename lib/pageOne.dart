import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  final data;
  PageOne(this.data);
  @override
  _PageOneState createState() => _PageOneState(this.data);
}

class _PageOneState extends State<PageOne> {
  var data;
  _PageOneState(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'pasge one ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: <Widget>[
              Image.asset('images/food.jpg'),
              Text("Name: ${data['name']}"),
              Text("Email: ${data['email']}"),
              RaisedButton(
                child: Text('Go Back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}

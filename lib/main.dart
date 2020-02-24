import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo  Page'),
          backgroundColor: Colors.amberAccent,
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'images/food.jpg',
                        width: 500,
                        height: 200,
                      ),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      BuildRow(),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      BuildRow(),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      BuildRow(),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      BuildRow(),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildRow extends StatelessWidget {
  const BuildRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          height: 100.0,
          width: 100.0,
          child: Icon(Icons.add_alarm),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 100.0,
          width: 100.0,
          child: Icon(Icons.add_a_photo),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 100.0,
          width: 100.0,
          child: Icon(Icons.add_a_photo),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        )
      ],
    );
  }
}

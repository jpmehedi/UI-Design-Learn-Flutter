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
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardBuilder(),
                    CardBuilder(),
                    CardBuilder(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardBuilder extends StatelessWidget {
  const CardBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Image.asset('images/food.jpg'),
                Positioned(
                  left: 65,
                  child: Text(
                    'Food Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.yellow[900],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

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
        body: Padding(
          
          padding: EdgeInsets.all(20),
          child: Text(
            'The qucik brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog',
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 20, shadows: <Shadow>[
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 5.0,
                color: Colors.grey,
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          foregroundColor: Colors.blueGrey,
          hoverColor: Colors.lightBlue,
          focusElevation: 5.0,
        ),
      ),
    );
  }
}

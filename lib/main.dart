import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title:'Test App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo  Page'),
          backgroundColor: Colors.amberAccent,
        ),
        body: Text('Hello Flutter'),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          foregroundColor: Colors.blueGrey,
          hoverColor: Colors.lightBlue,
          focusElevation:5.0,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:async';
import 'pageOne.dart';

void main() {
  runApp(MaterialApp(
    title: 'App',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data;
  Future<String> loadJsonData() async {
    var JsonText = await rootBundle.loadString('assets/data.json');
    setState(() {
      data = json.decode(JsonText);
      print(JsonText);
    });
  }

  @override
  void initState() {
    this.loadJsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Demo  Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(data[index]['name']),
                subtitle: Text(data[index]['email']),
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context)=>PageOne(data[index])));
                },
              );
            },),);
  }
}

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:async';
import 'pageOne.dart';
import 'package:http/http.dart' as http;

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

  List posts;
  Future<bool> getjsonData() async {
    String serviceURL = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(serviceURL);
    setState(() {
      posts = json.decode(response.body.toString());
      print(posts[0]);
    });
  }

  @override
  void initState() {
    this.getjsonData();
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
        itemCount: posts.length == null? 0 :posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(posts[index]['title']),
            subtitle: Text(posts[index]['body']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageOne(posts[index])));
            },
          );
        },
      ),
    );
  }
}

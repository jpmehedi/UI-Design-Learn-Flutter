import 'package:flutter/material.dart';
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
  List data;
  List unFilterData;
  Future<bool> getjsonData() async {
    String serviceURL = 'https://jsonplaceholder.typicode.com/users';
    var response = await http.get(serviceURL);
    setState(() {
      data = json.decode(response.body.toString());
    });
    this.unFilterData = data;
  }

  @override
  void initState() {
    this.getjsonData();
    super.initState();
  }

  searchData(str) {
    var strExits = str.length > 0 ? true : false;
    if (strExits) {
      var filterData = [];
      for (var i = 0; i < unFilterData.length; i++) {
        String name = unFilterData[i]['name'].toUpperCase();
        if (name.contains(str.toUpperCase())) {
          filterData.add(unFilterData[i]);
        }
      }
      setState(() {
        this.data = filterData;
      });
    } else {
      setState(() {
        this.data = this.unFilterData;
      });
    }
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: 'Search...'),
            onChanged: (str) {
              this.searchData(str);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length == null ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading:
                      CircleAvatar(child: Image.asset('images/avatar.png')),
                  title: Text(data[index]['name']),
                  subtitle: Text(data[index]['email']),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageOne(data[index])));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

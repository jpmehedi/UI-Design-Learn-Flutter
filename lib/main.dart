import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

List peopele = [
{"name":"Valina","email":"vdillway0@state.gov","language":"Latvian"},
{"name":"Lou","email":"lmccaughran1@usnews.com","language":"Māori"},
{"name":"Jacinda","email":"jbottle2@google.es","language":"Danish"},
{"name":"Irina","email":"iskellen3@wikispaces.com","language":"Japanese"},
{"name":"Damian","email":"dtimpany4@liveinternet.ru","language":"West Frisian"},
{"name":"Kaylee","email":"kmclanachan5@slashdot.org","language":"Croatian"},
{"name":"Salvador","email":"sphysic6@youtu.be","language":"Catalan"},
{"name":"Nessie","email":"ntomicki7@mozilla.com","language":"Somali"},
{"name":"Merilyn","email":"mbatty8@miibeian.gov.cn","language":"Bosnian"},
{"name":"Madeleine","email":"mkayes9@squarespace.com","language":"Amharic"}
];

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
          child: ListView.builder(
            itemCount: peopele.length,
            itemBuilder: (BuildContext context, int index){
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Text(peopele[index]['name'][0]),
                    ),
                    title: Text(peopele[index]['name']),
                    subtitle: Text(peopele[index]['email']),
                  )
                ],
              );
            },
            ),
          ),
        ),
    );
  }
}

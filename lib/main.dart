import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List peopele = [
    {"name": "Valina", "email": "vdillway0@state.gov", "language": "Latvian"},
    {"name": "Lou", "email": "lmccaughran1@usnews.com", "language": "Māori"},
    {"name": "Jacinda", "email": "jbottle2@google.es", "language": "Danish"},
    {
      "name": "Irina",
      "email": "iskellen3@wikispaces.com",
      "language": "Japanese"
    },
    {
      "name": "Damian",
      "email": "dtimpany4@liveinternet.ru",
      "language": "West Frisian"
    },
    {
      "name": "Kaylee",
      "email": "kmclanachan5@slashdot.org",
      "language": "Croatian"
    },
    {"name": "Salvador", "email": "sphysic6@youtu.be", "language": "Catalan"},
    {"name": "Nessie", "email": "ntomicki7@mozilla.com", "language": "Somali"},
    {
      "name": "Merilyn",
      "email": "mbatty8@miibeian.gov.cn",
      "language": "Bosnian"
    },
    {
      "name": "Madeleine",
      "email": "mkayes9@squarespace.com",
      "language": "Amharic"
    }
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
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('images/food.jpg'),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Image.asset('images/avatar.png',height: 100,width: 100),
                ),
                Positioned(
                  top: 150,
                  left: 30,
                  child: Text('MR. MEHEDI',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
                )
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('About'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Send Feedback'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Question'),
              trailing: Icon(Icons.navigate_next),
            )
          ],
        )),
        body: SafeArea(
          child: ListView.builder(
            itemCount: peopele.length,
            itemBuilder: (BuildContext context, int index) {
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

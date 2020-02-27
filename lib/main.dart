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
          drawer: Drawer(
            child: DrawerMenu(),
          ),
          body: ListView(
            controller: ScrollController(),
            children: <Widget>[
              CardBuilder(),
              CardBuilder(),
              CardBuilder(),
              CardBuilder(),
            ],
          )),
    );
  }
}

class CardBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/food.jpg',width: 400,height: 300,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Food Card',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Price \$ 33',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Seles 330',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset('images/food.jpg'),
            Positioned(
              top: 50,
              left: 30,
              child: Image.asset('images/avatar.png', height: 100, width: 100),
            ),
            Positioned(
                top: 150,
                left: 30,
                child: Text('MR. MEHEDI',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ))),
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
    );
  }
}

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
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 100,
                  
                    child: Container(
                      width: 375,
                      height: 400,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 20.0,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  BottomButton(
                    colur: Colors.orange,
                    icon: Icons.home,
                  ),
                  BottomButton(
                    colur: Colors.purple,
                    icon: Icons.account_box,
                  ),
                  BottomButton(
                    colur: Colors.green,
                    icon: Icons.edit,
                  ),
                  BottomButton(
                    colur: Colors.blue,
                    icon: Icons.email,
                  ),
                  BottomButton(
                    colur: Colors.yellow,
                    icon: Icons.add,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.colur, @required this.icon});
  final Color colur;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Icon(icon),
        width: 50,
        height: 89,
        decoration: BoxDecoration(
          color: colur,
        ),
      ),
    );
  }
}

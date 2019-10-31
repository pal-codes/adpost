import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 500,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              child: Container(
                height: 380,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
              ),
            ),
            Positioned(
              left: 30,
              child: CircleAvatar(
                radius: 25,
              ),
            ),
            Positioned(
              left: 100,
              child: Text(
                'Aayush Pal',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Positioned(
              child:
            Stack(
              children: <Widget>[
                Positioned(
                  left: 50,
                  bottom: 60,
                  child: Text(
                    'Ford Explorer',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Positioned(
                  width: 80,
                  left: 50,
                  bottom: 10,
                  child: Text(
                    '1 ltr, torque, horsepower, 2 years old',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  ),
                ),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

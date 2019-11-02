import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Component Demo'),
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
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 400,
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: 360,
                    margin: EdgeInsets.all(22.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        image: DecorationImage(image: ExactAssetImage('assets/sell3.jpg'), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    // child: Image.asset('assets/sell3.jpg', fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 35,
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
              ],
            ),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 20,
                  child: Text(
                    'Ford Explorer',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                Positioned(
                  width: 120,
                  left: 20,
                  bottom: 6,
                  child: Text(
                    '1 ltr, torque, horsepower, 2 years old',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Positioned(
                  top: 22,
                  right: 15,
                  child: Icon(Icons.keyboard_arrow_right, size: 20),
                ),
                Positioned(
                  top: 48,
                  right: 45,
                  child: Text(
                    'Price: 12200',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

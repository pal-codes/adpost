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
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Post Widget Normal Size',
              style: TextStyle(fontSize: 15),
            ),
          ),
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
                        image: DecorationImage(
                            image: ExactAssetImage('assets/sell3.jpg'),
                            fit: BoxFit.cover),
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
          Container(
            padding: EdgeInsets.all(10),
            child: Divider(
              color: Colors.black38,
              thickness: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Post Widget Medium Size',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 130,
                  color: Colors.grey[300],
                ),
                Positioned(
                  top: 12,
                  left: 14,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black54),
                    height: 105,
                    width: 105,
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 128,
                  child: Container(
                    width: 200,
                    child: Text(
                      'Mercedes C63s AMG',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 128,
                    child: Container(
                      width: 130,
                      child: Text(
                        'Matte dark grey, 2016 model, well maintained with sports package',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    )),
                Positioned(
                    top: 100,
                    left: 128,
                    child: Container(
                      width: 130,
                      child: Text(
                        '17, September 2019',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black38),
                      ),
                    )),
                Positioned(
                    top: 90,
                    right: 10,
                    child: Container(
                      width: 100,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey[100]),
                      child: Text(
                        '8299',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black38),
                      ),
                    )),
                Positioned(
                    top: 50,
                    right: 12,
                    child: Container(
                        child: Icon(Icons.keyboard_arrow_right, size: 30, color: Colors.grey[800],))),
              ],
            ),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'setting.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CSS Quiz',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/settings': (BuildContext context) => new SettingsPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TestProject',)
        ,
      ),

      body: Center(
        child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              //icons on top
              new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFF18D191)),
                    child: new Icon(
                      Icons.local_offer,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.fromLTRB(60.0, 50.0, 50.0, 60.0),
                    height: 160.0,
                    width: 180.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Colors.tealAccent),
                    child: new Icon(
                      Icons.local_offer,
                      color: Colors.white,
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFFFC6A7F)),
                    child: new Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(left: 30.0, top: 50.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFFFFCE56)),
                    child: new Icon(
                      Icons.local_car_wash,
                      color: Colors.white,
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.only(left: 90.0, top: 40.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(50.0),
                        color: Color(0xFF45E0EC)),
                    child: new Icon(
                      Icons.book,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const Divider(
                height: 10.0,
                color: Colors.red,
              ),


              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 5.0, top: 10.0),

                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SettingsPage(),
                          ));
                        },
                        child: new Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: Color(0xFF18D191),
                                borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Login",
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 20.0, top: 10.0),


                      child : GestureDetector(
                        onTap: () {
                         // print("heyyy");
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SettingsPage(),
                          ));
                        },


                        child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            child: new Text("Forgot Password?",
                                style: new TextStyle(
                                    fontSize: 17.0, color: Color(0xFF18D191)))),
                      ),
                    ),
                  )
                ],
              ),


              //Button
              new FlatButton(

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: const Text('Registration'),
                  onPressed: () => Navigator.of(context).pushNamed('/settings')
              )
            ]
        ),


      ),
    );
  }
}
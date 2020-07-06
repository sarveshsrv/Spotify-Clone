import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
Map<int, Color> color = {
  50: Color.fromRGBO(255, 92, 87, .1),
  100: Color.fromRGBO(255, 92, 87, .2),
  200: Color.fromRGBO(255, 92, 87, .3),
  300: Color.fromRGBO(255, 92, 87, .4),
  400: Color.fromRGBO(255, 92, 87, .5),
  500: Color.fromRGBO(255, 92, 87, .6),
  600: Color.fromRGBO(255, 92, 87, .7),
  700: Color.fromRGBO(255, 92, 87, .8),
  800: Color.fromRGBO(255, 92, 87, .9),
  900: Color.fromRGBO(255, 92, 87, 1),
};

MaterialColor colorCustom = MaterialColor(0xff17252A, color);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NewsApp',
      theme: new ThemeData(
        primarySwatch: colorCustom,
      ),
      home: new MyHomePage(title: 'My NewsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Welcome to my NewsApp',
              ),
            ],
          ),
        ),
        drawer: new Container(
          constraints: new BoxConstraints.expand(
            width: MediaQuery.of(context).size.width - 110,
          ),
          color: Colors.white,
          alignment: Alignment.center,
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new DrawerHeader(
                  padding: const EdgeInsets.all(15.0),
                  child: new UserAccountsDrawerHeader(
                    accountName: new Text(
                      'techSarvesh',
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: new Text(
                      'sarveshtiwaridev@gmail.com',
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPicture: Icon(Icons.account_circle),
                    decoration: new BoxDecoration(
                      color: Color(0xff3AAFA9),
                      //color: colorCustom,
                    ),
                  ),
                  decoration: new BoxDecoration(color: colorCustom)),
              new ListTile(
                  leading: new Icon(Icons.category),
                  title: new Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Categories");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.bookmark),
                  title: new Text(
                    "Library",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Library");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.help),
                  title: new Text(
                    "Help",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Help");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.settings),
                  title: new Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Settings");
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
             
             
             new ListTile(
                  leading: new Icon(Icons.perm_phone_msg),
                  title: new Text(
                    "Contact Us",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    _opennewpage("Contact Us");
                  }),
               Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Divider(
                  height: 5.0,
                  thickness: 1.5,
                  color: Color(0xff3AAFA9),
                ),
              ),
               new ListTile(
                  leading: new Icon(Icons.close),
                  title: new Text("Close"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }

  void _opennewpage(s) {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text(s),
            ),
            body: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 19.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 19.0),
                          child: FlutterLogo(
                            size: 70.0,
                          ),
                        ),
                        Text(
                          'Welcome to ' + s,
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

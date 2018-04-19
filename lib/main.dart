import 'package:flutter/material.dart';

import './DrawerScreen.dart' as DrawerScreen;
import './HomeScreen.dart' as Home;
import './TabScreen.dart' as TabScreen;
import './UsualNavScreen.dart' as UsualNavScreen;
import './SettingsScreen.dart' as SettingsScreen;
import './EmailScreen.dart' as EmailScreen;

void main() => runApp(new NavigationApp());

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new NavigationHomePage(),
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => new UsualNavScreen.UsualNavScreen(),
          '/b': (BuildContext context) => new DrawerScreen.DrawerNavScreen(),
        });
  }
}

class NavigationHomePage extends StatefulWidget {
  NavigationHomePage({Key key}) : super(key: key);
  @override
  _NavigationHomePageState createState() => new _NavigationHomePageState();
}

class _NavigationHomePageState extends State<NavigationHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // drawer: new Drawer(
        //   child: new ListTile(
        //     leading: new Icon(Icons.change_history),
        //     title: new Text('Screen2'),
        //     onTap: () {
        //       Navigator.of(context).pushNamed("/b");
        //     },
        //   ),
        //   elevation: 20.0,
        // ),
        appBar: new AppBar(
          title: new Text("Home"),
          backgroundColor: Colors.green,
        ),
        bottomNavigationBar: new Material(
          child: new TabBar(
            tabs: <Tab>[
              new Tab(
                icon: new Icon(Icons.person),
              ),
              new Tab(
                icon: new Icon(Icons.home),
              ),
              new Tab(
                icon: new Icon(Icons.email),
              ),
              new Tab(
                icon: new Icon(Icons.settings),
              )
            ],
            controller: controller,
          ),
          color: Colors.green,
        ),
        body: new TabBarView(
          children: <Widget>[new Home.HomeScreen(), new TabScreen.TabScreen(),new EmailScreen.EmailScreen(), new SettingsScreen.SettingsScreen()],
          controller: controller,
        ));
    }
}

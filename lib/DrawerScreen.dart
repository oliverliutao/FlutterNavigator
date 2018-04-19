import 'package:flutter/material.dart';

class DrawerNavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer screen Navigation"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text("You just used the drawer navigation!"),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
              child: new Text("Go back"),
            )
          ],
        ),
      ),
    );
  }
}

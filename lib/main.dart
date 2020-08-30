import 'package:flutter/material.dart';
import 'appBrain.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("OOP Practice App",
            style: TextStyle(
                color: Colors.white)
            ),
          centerTitle: true,
          backgroundColor: Colors.black
        ),
      body: HomePage()
      )
    )
  );
}
  
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  int stringIndex = 0;
  String toDisplay = "";
  AppData newApp = new AppData();

  void changeString () {
    setState(() {
      toDisplay = newApp.getString(stringIndex++);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Text(toDisplay),
        FlatButton(onPressed: () {changeString();}, child: Text("Press me")
            )
      ]
    );
  }
}

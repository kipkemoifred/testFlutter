import 'package:flutter/material.dart';
import 'drawer_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[200],
        title: Text("Test"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text("Home page"),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
children: [
  MenuItem(),
],
      ),
    )
  }

  Widget MenuItem() {
    return Material(
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.dashboard_outlined,
                size: 20,
                color: Colors.black,)
              ),
              Expanded(child: Text("Dashboard",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              ),

            ],
          ),
        ),
      ),
    )
  }

}




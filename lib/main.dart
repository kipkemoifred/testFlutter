import 'package:flutter/material.dart';
import 'package:test_submission/dictionary.dart';
import 'package:test_submission/response.dart';
import 'design.dart';
import 'drawer_header.dart';
import 'info.dart';

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
  var currentPage=DrawerSections.info;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage==DrawerSections.info){
      container=InfoPage();
    }else if(currentPage==DrawerSections.design){
      container=DesignPage();
    }else if(currentPage==DrawerSections.response){
      container=ResponsePage();
    }else if(currentPage==DrawerSections.dictionary){
      container=DictionaryPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[200],
        title: Text("Test"),
        centerTitle: true,
      ),
      body: container,
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
  MenuItem(1,"info",Icons.dashboard_outlined,
      currentPage==DrawerSections.info?true:false
  ),
  MenuItem(2,"design",Icons.notifications_outlined,
      currentPage==DrawerSections.design?true:false
  ),
  MenuItem(3,"response",Icons.feedback_outlined,
      currentPage==DrawerSections.response?true:false
  ),
  MenuItem(4,"dictionary",Icons.settings_outlined,
      currentPage==DrawerSections.dictionary?true:false
  ),
],
      ),
    );
  }

  Widget MenuItem(int id,String title,IconData icon,bool selected) {
    return Material(
      color: selected?Colors.grey[300]:Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id==1){
              currentPage=DrawerSections.info;
            } else if(id==2){
              currentPage=DrawerSections.design;
            } else if(id==3){
              currentPage=DrawerSections.response;
            } else if(id==4){
              currentPage=DrawerSections.dictionary;
            }

          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Icon(icon,
                size: 20,
                color: Colors.black,)
              ),
              Expanded(
                flex: 3,
                child: Text(title,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
enum DrawerSections{
  info,
  design,
  response,
  dictionary
}




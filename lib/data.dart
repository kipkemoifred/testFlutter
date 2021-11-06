import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {//https://jsonplaceholder.typicode.com/todos?_limit=5
  String authority="https://jsonplaceholder.typicode.com";
  String unencodedPath="todos?_limit=5";//todo title and the completed value

  Future getUserData() async{
    var response=
    await http.get(Uri.https(authority, unencodedPath));
    var jsonData=jsonDecode(response.body);
    List<Todo>todos=[];
    for(var u in jsonData){
      Todo todo=Todo(u['title'],u['completed']);
      todos.add(todo);
    }
    print(todos.length);
    return todos;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Binder"),
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
        future: getUserData(),
        builder: (context,snapshot){
          if(snapshot.data==null){
            return Container(
              child: Center(
                child: Text("Loading..."),),);
          }
          else{
            return ListView.builder(itemBuilder: (context,i){//itemCount:snapshot.data.length,
              return ListTile(
                //title: Text(snapshot.data![i].name),
              );
            });
          }
        },
      ),
      ),
      ),
    );
  }
}
//name id DOB (api)serialNo
class Todo{
    String title="";
    bool completed=false;//final
  Todo(this.title,this.completed);
}

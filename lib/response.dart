import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'data.dart';
class ResponsePage extends StatefulWidget {
  @override
  _ResponsePageState createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  getUserData()async{
    var response=
    await http.get(Uri.https('jsonplaceholder.typicode.com', 'todos',{'_limit':'5'}));//?_limit=5
    var jsonData=jsonDecode(response.body);
    List <Todo> todos=[];
    for(var u in jsonData){
      Todo todo=Todo(u["title"], u["completed"]);
      todos.add(todo);
    }
    print(todos.length);
    return todos;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: FutureBuilder(//<List<Todo>>

          future: getUserData(),
          builder: (BuildContext context,AsyncSnapshot  snapshot){//AsyncSnapshot<List<Todo>>
            if(snapshot.data==null){
              return Container(
                child: Center(
                  child: Text("Loading..."),),);
            }
            else{
              return ListView.builder(
                  itemCount:snapshot.data.length,
                  itemBuilder: (context,i){
                return ListTile(
                  title: Text(snapshot.data[i].title),
                );
              });
            }
          },
        ),
      ),
    );
  }
}


class Todo{
  String title;
  bool completed;//final
  Todo(this.title,this.completed);
}
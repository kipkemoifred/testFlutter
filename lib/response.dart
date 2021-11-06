import 'package:flutter/material.dart';
import 'data.dart';
class ResponsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
    // class Todo{
    // String title="";
    // bool completed=false;//final
    // Todo(this.title,this.completed);
    // }

    //);
  }
}
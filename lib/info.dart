import 'package:flutter/material.dart';

import 'design.dart';
class InfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoPageState();
  }
}
class InfoPageState extends State<InfoPage>{
  String _name="";
  String _email="";
  String _phoneNo="";
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Name",
          border: OutlineInputBorder()
      ),

      onSaved: (value)=>setState(()=>_name=value!),
    );
  }
  Widget _buildEmail(){
    return TextFormField(
        decoration: InputDecoration(
        labelText: "Email",
        border: OutlineInputBorder()
    ),

    onSaved: (value)=>setState(()=>_name=value!)
    );
  }
  Widget _buildPhoneNo(){
    return TextFormField(
        decoration: InputDecoration(
            labelText: "phone number",
            border: OutlineInputBorder()
        ),

        onSaved: (value)=>setState(()=>_name=value!)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child:ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
          _buildName(),
          _buildEmail(),
          _buildPhoneNo(),
          SizedBox(height: 100),
          RaisedButton(
            child: Text("Submit",style: TextStyle(color: Colors.blue,fontSize: 16)),
            onPressed: (){
              final snackBar = SnackBar(content: Text('User Saved'));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.cyanAccent[200],
                    title: Text("Test"),
                    centerTitle: true,
                  ),
                  body: DesignPage(),
                )),
              );
            },
          )
          ]
          // email ,phone number and a submit button
        )


      ),
    );
  }


}

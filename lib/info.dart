import 'package:flutter/material.dart';
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
            labelText: "Email",
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
            onPressed: (){},
          )
          ]
          // email ,phone number and a submit button
        )


      ),
    );
  }


}

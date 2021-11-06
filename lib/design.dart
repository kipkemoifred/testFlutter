import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 150,
     child: Card(

      shadowColor: Colors.grey,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent,Colors.red],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        padding: EdgeInsets.all(16),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
             const SizedBox(height: 4,),
            Text("Email",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
        const SizedBox(height: 4,),
              Text("phone Number",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 4,),

          ],
        ),
      ),

    )
      );
  }
}
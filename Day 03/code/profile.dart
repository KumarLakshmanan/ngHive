import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Profile"),
        backgroundColor:  Color.fromARGB(255, 3, 9, 100),
      ),
      body: ListView(
        children:<Widget> [
       
       Container(
         padding: EdgeInsets.all(10.3),
        child: Icon(Icons.account_circle_rounded,size: 120,color: Colors.grey,),
       ),
           Divider(
             height: 1.2,
           ),
           ListTile(
            
             title: Text("Name",style: TextStyle(color: Color.fromARGB(255, 3, 9, 100)),),
             subtitle: Text("user"),
           ),
           Divider(
             height: 1.2,
           ),
             ListTile(
            
             title: Text("Bio",style: TextStyle(color: Color.fromARGB(255, 3, 9, 100)),),
             subtitle: Text(" "),
             trailing: Icon(Icons.edit_note_sharp),
           ),
           Divider(
             height: 1.2,
           ),
           ListTile(
             title: Text("Phone number"),
             subtitle: Text(""),
           )
           
        ]
         
       ),
      
    );
  }
}
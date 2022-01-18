import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-learn"),
      backgroundColor: Color.fromARGB(255, 3, 9, 100),
      leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: 
                Image(image: AssetImage("images/scrimg6.jpeg",),width: 300,height: 250,)),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text("hello learners",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Container(
                  
                  padding: EdgeInsets.all(15),
                  child: Text("E-Learn is a online learing app.Learn everything from top class instructors",style: TextStyle(fontSize: 20),),
                )
              
            
          ],
        ),
      ),
    );
  }
}
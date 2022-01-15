import 'package:flutter/material.dart';

 class settings extends StatefulWidget {
  const settings({ Key? key }) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Settings"),
        backgroundColor:  Color.fromARGB(255, 3, 9, 100),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          
          
         
          children: [
            Row(
              
              children: [
                 Container(
                   padding: EdgeInsets.all(10),
                  child: Icon(Icons.notifications,size: 30,),
                ),
                 SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Ntification and sounds"),
                )
              ],
              
            ),
            Divider(
              height: 1,
            ),
             Row(
             
              children: [
                 Container(
                   padding: EdgeInsets.all(10),
                  child: Icon(Icons.lock,size: 30,),
                ),
                 SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Privacy and security"),
                )
              ],
              
            ),
             Divider(
              height: 1,
            ),
             Row(
             
              children: [
                 Container(
                   padding: EdgeInsets.all(10),
                  child: Icon(Icons.dark_mode,size: 30,),
                ),
                 SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Dark mode"),
                )
              ],
              
            ),
             Divider(
              height: 1,
            ),
             Row(
              
              children: [
                 Container(
                   padding: EdgeInsets.all(10),
                  child: Icon(Icons.chat,size: 30,)
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Ask a question"),
                )
              ],
              
            )


            
          ],
        ),
      ),
      
    );
  }
}
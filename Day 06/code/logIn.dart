// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:api_fetch/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
//import 'package:async/async.dart';

 
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  Map?  userDat;
  String Email = "";
 
 
  String ID = "";

 // Object? file;
 
 Future getData() async{
   var response= await http.get(Uri.https('jsonplaceholder.typicode.com', 'users/$ID',));
   var  file=jsonDecode(response.body);
   userDat=file;
   print(userDat.toString());
   print(userDat!["email"].toString());
   print(userDat!["company"]["name"].toString());
//    List <UserData> users=[];
//   //  Map<String,dynamic>userd={
//   //    "id" : file['id'],
//   //    "name":file['name'],
//   //    "email":file['email']
//   //  };
//       for(var u in file){
//         UserData user=UserData(u['id'], u['name'], u['email'] ,u['phone'], u['username'], u['website']);
//        users.add(user);
//       }
//       print(users);
//  return users;
}
 submit() async{
  await getData();
 var prefs=await SharedPreferences.getInstance();
  if(_formKey.currentState!.validate()){
    prefs.setString("data",jsonEncode(userDat));
    Navigator.push(context, MaterialPageRoute(builder: (context){
     return  Home();
    }));
 //  print(userd['id']);
  // print(file);
 
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Log in",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        // Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Sign up with one of the following options",
                style: TextStyle(color: Color.fromARGB(255, 214, 202, 202)),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 34, 34),
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 34, 34),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(10),
                    child: FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Form(
                key: _formKey,
                child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "ID",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  TextFormField(
                    
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 36, 34, 34),
                        filled: true,
                        hintText: "Enter id",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          //borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 165, 19, 133)),
                        )),
                    validator: (value){
                   // getData();
                    if(value==null||value.isEmpty){
                      return "required";
                    }
                    return null;
                      
                    },
                    onChanged: (vlaue)=>ID=vlaue,
                  ),



                  Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 36, 34, 34),
                        filled: true,
                        hintText: "Enter email",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          //borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 165, 19, 133)),
                        )),
                    validator:  (value){
                     // getData();
                   
                    
                      if(value!=userDat!['email'].toString()){
                        return"invalid email";
                      }
                        return null;
                    },
                   onChanged: (value){
                     Email=value;
                   }, 
                  ),
                 
                  
                 const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      await submit();
                    },
                    child: Container(
                        width: double.infinity,
                        height: 30,
                        alignment: Alignment.center,
                        child:const Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 199, 42, 133),
                    ),
                  ),
                const  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        FlatButton(
                            onPressed: () {
                             
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
// class UserData {
//   final int id;
//   final String name,email,phone,username,website;
//   UserData(this.id,this.name,this.email,this.phone,this.username,this.website);

// }
// class Address{
// final String streete,suit,city,zipcode;
// Address(this.city,this.streete,this.suit,this.zipcode);

// }
// class Company{
//   final String name,catchPhrase,bs;
//   Company(this.name,this.catchPhrase,this.bs);
// }
import './signUp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'myprefs.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

  String nemail = "";
  String npass = "";
  void subMit() {
    //print(oemail);
    if (_formKey.currentState!.validate()) {
      print("login");
    } else {
      print("Invalid");
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
              Navigator.pop(context);
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
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          //borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 165, 19, 133)),
                        )),
                    validator: (value) {
                      MySharedPreferences.instance
                          .getStringValue("oemail")
                          .then((val) => setState(() {
                                nemail = val;
                              }));

                      if (value == null || value != nemail || value.isEmpty) {
                        return "Invalid user name";
                      } else {
                        return null;
                      }
                      //validator(value);
                    },
                    //(value){
                    //  if(value == prefs.getString){}
                    // if( value==null || value.isEmpty){
                    //    return 'required*';
                    // }
                    // else if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
                    //   return "Enter valid email address";
                    // }
                    // return null;
                    //},
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 36, 34, 34),
                        filled: true,
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          //borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 165, 19, 133)),
                        )),
                    validator: (value) {
                      MySharedPreferences.instance
                          .getStringValue("opass")
                          .then((val) => setState(() {
                                npass = val;
                              }));
                      if (value == null || value != npass || value.isEmpty) {
                        return "invalid";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      subMit();
                    },
                    child: Container(
                        width: double.infinity,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 199, 42, 133),
                    ),
                  ),
                  SizedBox(
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
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()));
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

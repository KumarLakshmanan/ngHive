//import 'dart:async' show Future;
//import 'package:prefs/prefs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'logIn.dart';
import 'myprefs.dart';
import 'package:shared_preferences/shared_preferences.dart';



 class signup extends StatefulWidget {
  const signup({ Key? key }) : super(key: key);
   
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup>  {
   final _formKey = GlobalKey<FormState>();
   
   String? email;
   String? name;
   String? password;
   String? _email;
   
   void submit() {
   //  SharedPreferences prefs=await SharedPreferences.getInstance();
    
     if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
     // prefs.setString("email" ,email ?? "");
         MySharedPreferences.instance.setStringValue("oemail", email ?? "");
         MySharedPreferences.instance.setStringValue("opass", password ?? "");
         //print(email);
         //print(password);
        MySharedPreferences.instance
        .getStringValue("oemail")
        .then((val) => setState(() {
              _email = val;
            }));
            print(_email);
            
         
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            login()
                          ));
     }
   
     
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
       title: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
       leading: Icon(Icons.arrow_back_ios_new),
       backgroundColor: Colors.black,
     ),
      body:  
      Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
                                
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 20,bottom: 10),

                    child: Text("Sign up with one of the following options",style: TextStyle(color: Color.fromARGB(255, 214, 202, 202)),),
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
                               borderRadius: BorderRadius.circular(15)
                             ),
                             alignment: Alignment.center,
                             padding: EdgeInsets.all(10),
                             child:FaIcon(FontAwesomeIcons.google,color: Colors.white,) ,
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
                               borderRadius: BorderRadius.circular(15)
                             ),
                             padding: EdgeInsets.all(10),
                             child: FaIcon(FontAwesomeIcons.apple,color: Colors.white,),
                           ),
                         ],
                       
                     
                   ),
                  ),
                 
                  Form(
                    key: _formKey,
                    child: Column(
                    children:[
                     Container(
                       margin: EdgeInsets.only(top: 20),
                       padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Text("Name" ,style: TextStyle(color: Colors.white,),)),

                    TextFormField(
                        style: TextStyle(color:Colors.white),
                       decoration: InputDecoration(
                       fillColor: Color.fromARGB(255, 36, 34, 34),
                       filled: true,
                       hintText:"Enter name",
                       hintStyle: TextStyle(color: Colors.white),
                       
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        //borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color.fromARGB(255, 165, 19, 133)),
                      )
                      
                              ),
                              validator: (value){
                                 if(value==null || value.isEmpty){
                                   return "Required *";
                                 }else{
                                   return null;
                                 }
                              },
                              onSaved: (value)=> name=value,
                            ),

                             Container(
                       margin: EdgeInsets.only(top: 10),
                       padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Text("Email" ,style: TextStyle(color: Colors.white,),)),

                    TextFormField(
                        style: TextStyle(color:Colors.white),
                       decoration: InputDecoration(
                       fillColor: Color.fromARGB(255, 36, 34, 34),
                       filled: true,
                       hintText:"Enter email",
                       hintStyle: TextStyle(color: Colors.white),
                       
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        //borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color.fromARGB(255, 165, 19, 133)),
                      )
                      
                              ),
                            
                            validator: (value){
                              if( value==null || value.isEmpty){
                                 return 'required*'; 
                              }
                              else if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
                                return "Enter valid email address";
                              }
                              else
                                 {
                                   
                                 // MySharedPreferences.instance.setStringValue("oemail", value);
                                  return null;
                                 }
                            },
                                
                            onSaved: (value){
                                //  MySharedPreferences.instance.setStringValue("oemail", value!);
                                email=value ;
                              
                            },  
                              
                            ),

                             Container(
                       margin: EdgeInsets.only(top: 10),
                       padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Text("Password" ,style: TextStyle(color: Colors.white,),)),

                    TextFormField(
                      
                        style: TextStyle(color:Colors.white),
                       decoration: InputDecoration(
                         
                       fillColor: Color.fromARGB(255, 36, 34, 34),
                       filled: true,
                       hintText:"Pick a strong password",
                       hintStyle: TextStyle(color: Colors.white),
                       
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        //borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color.fromARGB(255, 165, 19, 133)),
                      )
                      
                              ),
                           validator: (value){
                           if(value==null || value.isEmpty){
                             return "Required";
                           }
                           else if(value.length < 6){
                             return "Minimum 6 character required";
                           }
                           else{
                             
                              //MySharedPreferences.instance.setStringValue("opass",value);
                              return null;
                           }
                           },
                           onSaved: (value){
                              //MySharedPreferences.instance.setStringValue("opass",value!);
                              password=value;
                           
                             
                           },
                            ),
                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){
                      submit();
                    }, child:Container(
                      width: double.infinity,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text("Create Account",style: TextStyle(color: Colors.white),)),
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
                          
                             Text("Already have an account?",style: TextStyle(color:Colors.white
                            ),
                          ),
                          FlatButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            login()
                          ));

                          }, child:Text("Log in",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                    )
                        
                    ]
                    )
                  ),
                
              
            ],
          ),
      ),
      
    );
  }
}









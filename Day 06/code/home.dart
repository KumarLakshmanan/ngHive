import 'dart:convert';
import 'dart:html';
import 'package:api_fetch/logIn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
Map? userData;
  Future getData() async{
    var prefs=await SharedPreferences.getInstance();
    var data=prefs.getString("data");
    userData=jsonDecode(data!);
   // print(userData!["email"].toString());
   return userData;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        title: Text("Profile",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: FutureBuilder(
        future: getData(),
        builder:(BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.data==null){
          return Center(
              
            child: Text("Loading...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            );

          }
          else{
            return SingleChildScrollView(
              padding:EdgeInsets.only(top: 30,left: 20,right:20),
              child: Column(
              
                crossAxisAlignment:CrossAxisAlignment.start,
                
                children:[
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          

                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15,top: 6),
                          width: 150,
                          height: 160,
                          alignment:Alignment.topRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(snapshot.data["name"],style: TextStyle(color: Color.fromARGB(255, 189, 65, 106),fontWeight: FontWeight.bold,fontSize: 20),),
                              SizedBox(
                                height: 3,
                              ),
                              Text(snapshot.data['email'],style: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),),
                               SizedBox(
                                 height: 30,
                               ),
                               Row(
                                 children: [
                                 FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
                                 SizedBox(
                                   width: 20,
                                 ),
                                 FaIcon(FontAwesomeIcons.instagram,color: Color.fromARGB(255, 212, 46, 101),),
                                  SizedBox(
                                   width: 20,
                                 ),
                                 FaIcon(FontAwesomeIcons.twitter,color: Colors.lightBlue,)
                               ],)
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 160,
                              height: 150,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 36, 34, 34),
                                borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                 
                                  children: [
                                    
                                    Container(
                                      width: 40,
                                      height: 70,
                                      alignment: Alignment.center,
                                      child: Icon(Icons.location_pin,size: 30,color: Colors.white,)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width:80,
                                          height:100,
                                      alignment: Alignment.center,
                                     
                                      child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Address",style: TextStyle(color: Color.fromARGB(255, 189, 65, 106),fontWeight: FontWeight.bold,fontSize: 20),),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(snapshot.data["address"]["street"]+",",style: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),),
                                          Text(snapshot.data["address"]["suite"]+",",style: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),),
                                          Text(snapshot.data["address"]["city"]+",",style: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            
                     Container(
                                    width: 160,
                                    height: 150,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 36, 34, 34),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 70,
                                          alignment: Alignment.center,
                                          child: FaIcon(
                                            FontAwesomeIcons.phone,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          width:80,
                                          height:80,
                                            
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Phone",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 189, 65, 106),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  snapshot.data['phone'],
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 153, 148, 148)),
                                                )
                                              ],
                                            )
                                            ),
                                      ],
                                    ),
                              ),
                                
                          ],
                        ),

                      
                      SizedBox(
                        height: 25,
                      ),
                       Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 36, 34, 34),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 70,
                                          alignment: Alignment.center,
                                          child: FaIcon(
                                            FontAwesomeIcons.building,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                            
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Company",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 189, 65, 106),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(snapshot.data["company"]["name"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                                Text(snapshot.data["company"]["catchPhrase"]+",",style: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),),
                                                Text(snapshot.data["company"]["bs"]+",",style: TextStyle(color: Color.fromARGB(255, 153, 148, 148)),),
                                              ],
                                            )
                                            ),
                                      ],
                                    ),
                              ),
                                 
                               
                    
                    
                    const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      var prefs=await SharedPreferences.getInstance();
                      prefs.remove("data");
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));
                    },
                    child: Container(
                        width: double.infinity,
                        height: 30,
                        alignment: Alignment.center,
                        child:const Text(
                          "Log out",
                          style: TextStyle(color: Colors.white),
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 199, 42, 133),
                    ),
                  ),
                ]
              ),

            );
            
          }
        }
        ),
    );
  }
}
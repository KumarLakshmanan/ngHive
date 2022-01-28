import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_switch/flutter_switch.dart';




Color _borderColor=Colors.black;
Color _iconColor=Colors.white24;
Color _bgColor=Colors.black;
Color _textColor=Colors.white24;

Color _borderColor2=Colors.black;
Color _iconColor2=Colors.white24;
Color _bgColor2=Colors.black;
Color _textColor2=Colors.white24;

Color _borderColor3=Colors.black;
Color _iconColor3=Colors.white24;
Color _bgColor3=Colors.black;
Color _textColor3=Colors.white24;

Color adricon=Colors.white70;
Color monticon=Colors.white70;

Color FaI=Colors.white54;
Color FaI2=Colors.white54;
class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
 bool status=false;
 bool  status2=false;
 
   _color1(){
     setState(() {

       _iconColor==Colors.orange?_iconColor= Colors.white54:_iconColor=Colors.orange;
       _borderColor==Colors.orange?  _borderColor=Colors.black: _borderColor=Colors.orange;
       _bgColor==Color.fromARGB(255, 83, 80, 80)?_bgColor=Colors.black:_bgColor=Color.fromARGB(255, 83, 80, 80);
       _textColor==Colors.white70?_textColor=Colors.white54:_textColor=Colors.white70;
     });
   }
   _color2(){
     setState(() {

       _iconColor2==Colors.orange? _iconColor2=Colors.white54: _iconColor2=Colors.orange;
       _borderColor2==Colors.orange?  _borderColor2=Colors.black: _borderColor2=Colors.orange;
       _bgColor2==Color.fromARGB(255, 83, 80, 80)?_bgColor2=Colors.black:_bgColor2=Color.fromARGB(255, 83, 80, 80);
       _textColor2==Colors.white70?_textColor2=Colors.white54:_textColor2=Colors.white70;
     });
   }
   _color3(){
     setState(() {

       _iconColor3==Colors.orange? _iconColor3= Colors.white54: _iconColor3=Colors.orange;
       _borderColor3==Colors.orange? _borderColor3=Colors.black: _borderColor3=Colors.orange;
       _bgColor3==Color.fromARGB(255, 83, 80, 80)?_bgColor3=Colors.black:_bgColor3=Color.fromARGB(255, 83, 80, 80);
       _textColor3==Colors.white70?_textColor3=Colors.white54:_textColor3=Colors.white70;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Categories",style: TextStyle(color: Colors.white,fontFamily: "PTSans",fontStyle: FontStyle.normal),),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.white,))
        ],
      ),
      bottomNavigationBar:
          Padding(
          
            padding: const EdgeInsets.only(bottom: 40,left:10,right: 10,),
            child: FlatButton(onPressed: (){}, child: Container(
             alignment: Alignment.center,
             width: double.infinity,
             height: 42,
             padding: EdgeInsets.all(7),
         child: Text("Show all history",style: TextStyle(color: Colors.black,fontFamily:"PTSans",fontWeight: FontWeight.bold,)),
         decoration: BoxDecoration(
             color: Color(0xff00EF9E),
             borderRadius: BorderRadius.circular(15)
         ),
         )),
          ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 23,left: 18,right: 18,bottom: 23),
        child: Column(
          children:[
           Row(
             
             children:[
                  GestureDetector(
                     onTap: (() => _color1()),
                     child:
               Container(
                 padding: EdgeInsets.all(15),
                 alignment: Alignment.center,
                 width: 103,
                 height: 130,
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 48, 46, 46),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: 
              Column(
                   children: [
                    Container(
                      alignment: Alignment.center,
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                         color: _bgColor,
                         borderRadius: BorderRadius.circular(100),
                         border: Border.all(
                           color: _borderColor,
                           width: 2,
                         ),
                         
                       ),
                       child:FaIcon(FontAwesomeIcons.building,color: _iconColor,) ,
                     ),
                   
                  //  CircleAvatar(
                  //    radius: 10,
                  //    backgroundColor: Colors.grey,
                  //    child: Icon(Icons.hotel_class,color: Colors.white70,) ,
                  //  ),
                  
                     SizedBox(
                       height: 15,
                     ),
                     Text("Rent",style: TextStyle(color: _textColor,fontFamily: "PTSans"),)
                   ],
                 ),),
               ),
               SizedBox(
                 width:15,
               ),
               GestureDetector(
                       onTap: () =>_color2() ,
                       child: Container(
                 padding: EdgeInsets.all(15),
                 alignment: Alignment.center,
                 width: 103,
                 height: 130,
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 48, 46, 46),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child:
                   Column(
                   children: [
                     Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                         color:_bgColor2,
                         borderRadius: BorderRadius.circular(100),
                         border: Border.all(
                           color:_borderColor2,
                           width: 2,
                         ),
                         
                       ),
                       child:Icon(Icons.monitor_heart_sharp,color:_iconColor2,) ,
                                        ),
                     
                     
                     SizedBox(
                       height: 15,
                     ),
                     Text("Health",style: TextStyle(color:_textColor2,fontFamily: "PTSans"),)
                   ],
                 ),),
               ),
                SizedBox(
                 width:15,
               ),
               GestureDetector(
                    onTap: ()=>_color3(),
                    child:  Container(
                 padding: EdgeInsets.all(15),
                 alignment: Alignment.center,
                 width: 103,
                 height: 130,
                 decoration: BoxDecoration(
                   color: Color.fromARGB(255, 48, 46, 46),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child:
                  Column(
                     children: [
                  
                         Container(
                           alignment: Alignment.center,
                       width: 50,
                       height:50,
                       decoration: BoxDecoration(
                         color: _bgColor3,
                         borderRadius: BorderRadius.circular(100),
                         border: Border.all(
                           color: _borderColor3,
                           width: 2,
                         ),
                         
                       ),
                       child: FaIcon(FontAwesomeIcons.pizzaSlice,color: _iconColor3,),
                     ),
                     
                       SizedBox(
                         height: 15,
                       ),
                       Text("Food",style: TextStyle(color: _textColor3,fontFamily: "PTSans"),)
                     ],
                                   ),
                  ),
               ),
             ]
           ),
//            ListView(
// children: [
//   ListTile(
//             leading:FaIcon(FontAwesomeIcons.signOutAlt),
//             title:Text("Save address",style: TextStyle(color:Colors.white,),),
//             subtitle: Column(
//               children: [
//                 Text("Hwy East Bernstadt,",style: TextStyle(fontFamily: "PTSans",color: Colors.white12),)
//                 ,Text("Kenlucky.KY") 
//               ],
//             ),
//             trailing: Column(
//               children:[
//                FlutterSwitch(
                
//                  inactiveColor: Colors.white,
//                  activeColor: Colors.green,
//                  width:60 ,
//                  height: 30,
//                  toggleColor: Colors.black,
                 
//                   value: status,
//                   onToggle: (val){
//                     setState(() {
//                       status=val;
//                     });
//                   },
//               ),
//               ],
//             ),
//           )
// ],
//            ),
          
          SizedBox(
            height:60,
          ),
           Container(
             child: Row(
               children: [
                 Container(
                   alignment: Alignment.topCenter,
                   width: 50,
                   height: 60,
                   padding: EdgeInsets.only(right: 15,),
                   child: FaIcon(FontAwesomeIcons.signOutAlt,color:adricon),
                 ),
                 Container(
                   alignment: Alignment.topCenter,
                   width: 280,
                   height: 60,
                   child:Stack(children: [
                    Positioned(
                      left: 0,
                      child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                       children: [
                         Text("Save address",style: TextStyle(color:Colors.white,fontSize: 15),),
                         SizedBox(height: 10,),
                          Text("Hwy East Bernstadt,",style: TextStyle(fontFamily: "PTSans",color: Colors.white54),),
                          Text("Kenlucky.KY",style: TextStyle(fontFamily: "PTSans",color: Colors.white54),) 
                       ],
                                     ),
                    ),
                  
                    Positioned(
                      
                      right: 0,
                      child: Column(
                       children: [
                         Container(
                           //padding: EdgeInsets.only(right: 10),
                           alignment: Alignment.topRight,
                           child: FlutterSwitch(
                          width: 43,
                          height: 25,
                           inactiveColor: Colors.white,
                           activeColor: Color(0xff00EF9E),
                           //toggleSize: 35,
                                     
                           toggleColor: Colors.black,
                           
                            value: status,
                            onToggle: (val){
                              setState(() {
                                status=val;
                                adricon==Colors.white70?adricon=Color(0xff00EF9E):adricon=Colors.white70;
                              });
                            },
                                     ),
                                     
                         ),
                         SizedBox(height: 10,),
                         Text("15 Dec",style: TextStyle(fontFamily: "PTSans",color: Colors.white54),)
                       ],
                                     ),
                    ),
                 
                   ],)
                 ),
                
                        
               
                
                
               ],
             ),
           ),
            //  SizedBox(
            //      height: 50,
            //    ),
                     Divider(
                        height: 80,
                        thickness: 5,
                        indent: 50,
                  color: Color.fromARGB(255, 48, 46, 46),   
                 ),
              //  SizedBox(
              //    height: 50,
              //  ),
             
            //  ListTile(
            //    dense:false,
            //    leading: FaIcon(FontAwesomeIcons.signOutAlt,color:monticon),
            //    title:  Text("Save address",style: TextStyle(color:Colors.white,fontSize: 15),) ,
              
            //  )
           
       Container(
             child: Row(
               children: [
                 Container(
                   alignment: Alignment.topCenter,
                   width: 50,
                   height: 80,
                   padding: EdgeInsets.only(right: 15,),
                   child: FaIcon(FontAwesomeIcons.signOutAlt,color:monticon),
                 ),
                 Container(
                   alignment: Alignment.topCenter,
                   width: 280,
                   height: 80,
                   child:Stack(children: [
                    Positioned(
                      left: 0,
                      child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                       children: [
                         Text("Monthly fee",style: TextStyle(color:Colors.white,fontSize: 15),),
                         SizedBox(height: 10,),
                          Text("We have set a monthly,",style: TextStyle(fontFamily: "PTSans",color: Colors.white54),),
                          Text("payment reminder",style: TextStyle(fontFamily: "PTSans",color: Colors.white54),) 
                       ],
                                     ),
                    ),
                  
                    Positioned(
                      
                      right: 0,
                      child: Column(
                       children: [
                         Container(
                           //padding: EdgeInsets.only(right: 10),
                           alignment: Alignment.topRight,
                           child: FlutterSwitch(
                          width: 43,
                          height: 25,
                           inactiveColor: Colors.white,
                           activeColor: Color(0xff00EF9E),
                          //toggleSize: 38,
                                     
                           toggleColor: Colors.black,
                           
                            value: status2,
                            onToggle: (val){
                              setState(() {
                                status2=val;
                                monticon==Colors.white70?monticon=Color(0xff00EF9E):monticon=Colors.white70;
                              });
                            },
                                     ),
                                     
                         ),
                         SizedBox(height: 10,),
                         Text("15 Dec",style: TextStyle(fontFamily: "PTSans",color: Colors.white54,fontStyle: FontStyle.normal),),
                        
                       ],
                                     ),
                    ),
                 
                   ],)
                 ),
                
                        
               
                
                
               ],
             ),
           ),
           Container(
             width:339,
             height: 25,
             child: Stack(
               children: [
                 Positioned(
                   left: 0,
                   child: Text("Saved Transacations",style:TextStyle(color:Colors.white,fontFamily: "PTSans",fontSize: 20,fontStyle: FontStyle.normal)),
                   ),
                   Positioned(
                     right: 0,
                     child: Icon(Icons.wifi,color: Colors.white70,),)
               ],
             ),
           ),
             
               
                
                  
               
             
           
           SizedBox(
             height: 30,
           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               
               children: [
                 Container(
                   padding: EdgeInsets.all(13),
                   width: 270,
                   height:125,
                   decoration: BoxDecoration(
                     color:Color.fromARGB(255, 48, 46, 46),
                     borderRadius: BorderRadius.circular(20), 
                   ),
                   child: Stack(
                     children: [
                       Positioned(
                         left: 0,
                         top: 0,
                         child:
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            Text("Pharmacy",style: TextStyle(color: Colors.white60),),
                            SizedBox(
                              height: 3,
                            ),
                          Text("Russell Ranch Rd,CA",style: TextStyle(color:Colors.white38),),
                         ])),
                         Positioned(
                           bottom: 0,
                           left: 0,
                           child: Text("All info",style: TextStyle(color: Colors.white38,
                         decoration: TextDecoration.underline,
                         ),
                         
                         
                         )),
                         Positioned(
                           bottom: 0,
                           right:0,
                           child: Text("\$255.00",style: TextStyle(fontSize: 20,color: Colors.white70),)),
                            Positioned(
                             top:0,
                             right: 0,
                             child: Icon(Icons.bookmark_border,color: Colors.white38,))
                     ],
                   ),
                 ),
                 SizedBox(
                   width: 15,
                 ),
                 Container(
                   padding: EdgeInsets.all(13),
                   width: 250,
                   height:125,
                   decoration: BoxDecoration(
                     color:Color.fromARGB(255, 48, 46, 46),
                     borderRadius: BorderRadius.circular(20), 
                   ),
                   child: Stack(
                     children: [
                       Positioned(
                         left: 0,
                         top: 0,
                         child:
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            Text("Food",style: TextStyle(color: Colors.white60),),
                            SizedBox(
                              height: 3,
                            ),
                          Text("Russell Ranch Rd,CA",style: TextStyle(color:Colors.white38),),
                         ])),
                         Positioned(
                           bottom: 0,
                           left: 0,
                           child: Text("All info",style: TextStyle(color: Colors.white38,
                         decoration: TextDecoration.underline,
                         ),
                         
                         
                         )),
                         Positioned(
                           bottom: 0,
                           right:0,
                           child: Text("\$255.00",style: TextStyle(fontSize: 20,color: Colors.white70),)),
                           Positioned(
                             top:0,
                             right: 0,
                             child: Icon(Icons.bookmark_border,color: Colors.white38,))
                     ],
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(
             height: 30,
           ),
            Container(
             width:339,
             height: 25,
             child: Stack(
               children: [
                 Positioned(
                   left: 0,
                   child: Text("Transacation",style:TextStyle(color:Colors.white,fontFamily: "PTSans",fontSize: 20,fontStyle: FontStyle.normal)),
                   ),
                   Positioned(
                     right: 0,
                     child: FaIcon(FontAwesomeIcons.compressAlt,color: Colors.white70),)
               ],
             ),
           ),
           SizedBox(
             height: 30,
           ),
           Row(
             children: [
               GestureDetector(
                 onTap: (){
                  setState(() {
                     FaI==Colors.white54?FaI=Colors.orange:FaI=Colors.white54;
                  });
                 },
                 child: Container(
                   width: 65,
                   height: 60,
                   alignment: Alignment.center,
                   decoration:BoxDecoration(
                     color:Color.fromARGB(255, 48, 46, 46),
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: FaIcon(FontAwesomeIcons.tableTennis,color: FaI,)
                 ),
               ),
               Container(
                 padding:EdgeInsets.only(left:10),
                 width:274,
                 height: 60,
                 child: Stack(children: [
                    Positioned(
                      left: 0,
                      

                      child: Container(
                        width: 170,
                        height: 60,
                        alignment:Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text("Sport Online",style: TextStyle(color: Colors.white70,fontSize: 16),),
                          SizedBox(
                            height:4
                          ),
                          Text("Niagara Falls,NY",style: TextStyle(color: Colors.white54),)
                        ]
                    ),
                      ),
                    ),
                    Positioned(
                      right:0,
                      child: Container(
                        width: 80,
                        height: 60,
                        alignment: Alignment.centerRight,
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$85.00",style: TextStyle(color: Colors.white,fontSize: 16),),
                            SizedBox(
                            height:4
                          ),
                          Text("-25%",style: TextStyle(color: Colors.white54),)
                        ],
                    ),
                      )),

                 ]),
               )
             ],
           ),
           SizedBox(
             height: 15,
           ),
            Row(
             children: [
               GestureDetector(
                 onTap: (){
                  setState(() {
                     FaI2==Colors.white54?FaI2=Colors.orange:FaI2=Colors.white54;
                  });
                 },
                 child: Container(
                   width: 65,
                   height: 60,
                   alignment: Alignment.center,
                   decoration:BoxDecoration(
                     color:Color.fromARGB(255, 48, 46, 46),
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: FaIcon(FontAwesomeIcons.tshirt,color: FaI2,)
                 ),
               ),
               Container(
                 padding:EdgeInsets.only(left:10),
                 width:274,
                 height: 60,
                 child: Stack(children: [
                    Positioned(
                      left: 0,
                      

                      child: Container(
                        width: 170,
                        height: 60,
                        alignment:Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          mainAxisAlignment:MainAxisAlignment.center,
                        children:[
                          Text("Lure Store",style: TextStyle(color: Colors.white70,fontSize: 16),),
                          SizedBox(
                            height:4
                          ),
                          Text("Mc Donough,NY",style: TextStyle(color: Colors.white54),)
                        ]
                    ),
                      ),
                    ),
                    Positioned(
                      right:0,
                      child: Container(
                        width: 80,
                        height: 60,
                        alignment: Alignment.centerRight,
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text("\$64.99",style: TextStyle(color: Colors.white,fontSize: 16),),
                            SizedBox(
                            height:4
                          ),
                          Text("-8%",style: TextStyle(color: Colors.white54),)
                        ],
                    ),
                      )),

                 ]),
               )
             ],
           )
          ]
        ),
      ),
      
    );
  }
}


import 'package:flutter/material.dart';
import 'package:gridview/profile.dart';
import 'package:gridview/settings.dart';
import 'grid.dart';
import 'listView.dart';



 class home extends StatefulWidget {
   
  
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
  
}

class _homeState extends State<home> {
  PageController page=new PageController(initialPage: 0);
  int index=0;
  
  List recImage=[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM6ZH6MP5Czkw9R16RdDgZy-i9G-qYq9yp0g&usqp=CAU",
  "data:image/jpeg;base64,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",
  "data:image/jpeg;base64,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",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjUHYgwu2Fc2a7rNvaYJeuRKpEOJf9oHW7_w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI_UEzwL8pQ24KPX-YNup-WVFh-NUi0TC4QQ&usqp=CAU"

  ];
  List recTitle=["Learn Artificial Intelligence",
  "Learn web development using HTML,CSS and javascript",
  "How to become a cyber analyst",
  "Data science using python",
  "Learn app development"
  ];
  List webImage=[
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtcBzBzBcsI5hZkrY3DyiKScI_ZTPPGJRzXw&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvzsPju4cyyRvPMXwCOH9esipU1hn55bEW7A&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC4D5dII4R15cy44N0ZyvGZwtFuMfsuwhvrg&usqp=CAU",
"data:image/jpeg;base64,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",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShULf6It4cvieN_mcL-2cmdCtjU2k4AMy4Cg&usqp=CAU",
  ];
  List webTitle=[
         "Basic of HTML,CSS and JS",
"React.js for Fontend-webdevelopment",
"Learn php -backend development",
"Learn mangoDB,Express,React and Node-MERN Fullstack ","Learn node.js"
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
        backgroundColor: Color.fromARGB(255, 3, 9, 100),
      ),
      body:PageView(
        controller: page,
      children:[
      
      
      SingleChildScrollView(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
           

       Container(
            
              
            
         padding: EdgeInsets.all(20),
         margin:EdgeInsets.only(left: 20,top: 20.0),
         child:  Text("Recommended for you",style: TextStyle(fontSize: 30,),),
       ),
      
     
                      
       Container(
            child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  for (var i = 0; i < 5; i++) 
                     
                    Container(
                        padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width: 300,
                      height: 250,
                      
                      decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(14)),
                      child:Stack(
                        
                       
                        children: [
                          Positioned(
                            top: 0,
                           
                            
                            width: 270,
                            height:150,
                            child: Container(
                          alignment: Alignment.topRight,
                      padding: EdgeInsets.all(10),

                      
                      
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(recImage.elementAt(i)),
                       fit:BoxFit.cover ),
                       borderRadius: BorderRadius.circular(14.0),
                       ),
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Icon(Icons.bookmark,color:Colors.white,size:30),
                        ) 
                        
                    ),),
                     
                   Positioned(
                     bottom: 0,
                     
                     
                     width: 250,
                     height:80 ,
                     child: Container(
                       margin: EdgeInsets.only(top:15),
                       padding:EdgeInsets.all(10),
                       child:  ListView(
                       children: [
                         ListTile(
                           title: Text(recTitle.elementAt(i),style: TextStyle(color: Colors.white,fontSize: 13),),
                           trailing: FlatButton(onPressed: (){}, child: Text("Buy Now"),
                           color: Colors.blue,
                           textColor: Colors.white,
                          
                           ),
                         )
                       ],
                     )
                     )
                     )  
                       
                  
                        ],
                        ),
                      

                      ),
                    SizedBox(
                      width: 10,
                    ),
                  
                  ],
                )
                )
                ),

                SizedBox(
                  height: 10,
                ),
                 Container(
            
              
            
         padding: EdgeInsets.all(20),
         margin:EdgeInsets.only(left: 20,top: 20.0),
         child:  Text("Web Technologies",style: TextStyle(fontSize: 30,),),
       ),
      
     
                      
       Container(
            child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  for (var i = 0; i < 5; i++) 
                     
                    Container(
                        padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width: 300,
                      height: 250,
                      
                      decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(14)),
                      child:Stack(
                        
                       
                        children: [
                          Positioned(
                            top: 0,
                           
                            
                            width: 270,
                            height:150,
                            child: Container(
                          alignment: Alignment.topRight,
                      padding: EdgeInsets.all(10),

                      
                      
                       decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(webImage.elementAt(i)),
                       fit:BoxFit.cover ),
                       borderRadius: BorderRadius.circular(14.0),
                       ),
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Icon(Icons.bookmark,color:Colors.white,size:30),
                        ) 
                        
                    ),),
                     
                   Positioned(
                     bottom: 0,
                     
                     
                     width: 250,
                     height:80 ,
                     child: Container(
                       margin: EdgeInsets.only(top:15),
                       padding:EdgeInsets.all(10),
                       child:  Stack(
                       children: [
                         Positioned(
                           left: 0,
                           child: 
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              width: 110,
                              
                              child: Text(webTitle.elementAt(i),style: TextStyle(color: Colors.white,fontSize: 13),)),
                         ),
                           Positioned(
                             
                             right: 0,
                             child: 
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: FlatButton(onPressed: (){}, child: Text("Buy Now"),
                           color: Colors.blue,
                           textColor: Colors.white,),
                            ),
                           )
                           
                         
                       ],
                     )
                     )
                     )  
                       
                  
                        ],
                        ),
                      

                      ),
                    SizedBox(
                      width: 10,
                    ),
                  
                  ],
                )
                )
                ),
      
      
      ]
       )
       ),
    //  Container(
    //     padding:EdgeInsets.all(15),
    //     alignment: Alignment.center,
    //    child: SingleChildScrollView(
    //      child: Column(
    //        children: [
    //          Container(
    //            padding: EdgeInsets.all(25),
    //            child: Text("POPULAR GROUPS",style: TextStyle(fontSize:10)),
    //          ),
    //          Container(
    //            child: learn(),
    //          )
    //        ],
    //      ),
    //    )
    //  ),
    
         learn(),
         Group(),

      
    
     
      ],
      onPageChanged: (currentPage){
        setState(() {
          index=currentPage;
        });
      },
      ),
       

      

       

      
          
       
       drawer: Drawer(
        elevation: 15.0,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("user"),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,
            radius: 50.0,),
            accountEmail: Text("dfg@gmail"),
            
              decoration: BoxDecoration(color: Color.fromARGB(255, 3, 9, 100),)
            ),

            
            ListTile(
              leading:IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
          return profile();}));
              }, icon: Icon(Icons.person)),
              // Icon(Icons.person),
              title: Text('profile'),
            ),
            Divider(
              height: 0.9,
            ),
            ListTile(
              leading: IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {
          return settings();}));

              }, icon: Icon(Icons.settings)),
              title: Text('settings'),
            ),
            Divider(
              height: 0.9,
            ),
            ListTile(
              leading: IconButton(onPressed: (){}, icon: Icon(Icons.question_answer)),
              title: Text('terms&contitions'),
            ),
            Divider(
              height:1.5,
            ),
            ListTile(
            
              title: Text('About'),
            ),
            Divider(
              height: 0.8,
            ),
          ],
        ),
       ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: index,
         type: BottomNavigationBarType.fixed,
         fixedColor: Color.fromARGB(255, 3, 9, 100),
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),
           label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.book),
           label: "My learn"),
           BottomNavigationBarItem(icon: Icon(Icons.groups_outlined),
           label: "Groups"),
         ],
      onTap: (currentIndex){
        setState(() {
          index=currentIndex;
          page.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.linearToEaseOut);
        });
      },
      
       ),
    );
    
  }
}
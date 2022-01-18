import 'home.dart';

import 'package:flutter/material.dart';
//import 'package:gridview/home.dart';
//import 'package:gridview/main.dart';


import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

 class introScr extends StatefulWidget {
  const introScr({ Key? key }) : super(key: key);

  @override
  _introScrState createState() => _introScrState();
}

class _introScrState extends State<introScr> {

   
  @override
  Widget build(BuildContext context) {
    return 
      IntroductionScreen( 
    
      pages: [
        PageViewModel(title: "E-learning",
        body: "learning everything to build everything.Studies are endless ocean and so learnt from it to swim with in it",
        image:
        // Image(image: NetworkImage("https://www.kindpng.com/picc/m/481-4814399_smart-classroom-e-learning-app-hd-png-download.png")) 
        Center(child: Image.asset("images/scrimg1.jpeg"),

       
        ),
         decoration:PageDecoration(
           imagePadding: EdgeInsets.only(top:25)
         )
        
        ),
        PageViewModel(
          title: "Register",
        body: "Register today for build your own empire tomorrow",
      
        image: Center(child: Image. asset("images/scrimg5.png")),
       decoration:PageDecoration(
           imagePadding: EdgeInsets.only(top:25),
           footerPadding:  EdgeInsets.all(10)
           
         ),
         footer: ElevatedButton(onPressed: (){}, child: Text("Register"))
        ),
      ],
      showNextButton:true,
      next:const Text("next"),
      onSkip: (){
        onskip(context);
      },
      showDoneButton:true,
      done:const Text("sign up"),
      onDone:(){},
      showSkipButton: true,
      skip: const Text("skip"),
      
       dotsDecorator: DotsDecorator(
    size: const Size.square(10.0),
    activeSize: const Size(20.0, 10.0),
    activeColor: Colors.lightBlue,
    color: Colors.black26,
    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0)
    ),
    
        
       )  
     
    );
    
  }
  void onskip(context) async{
     final pref=await SharedPreferences.getInstance();
     await pref.setBool("introscreen", false); 
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home()));
    }
}
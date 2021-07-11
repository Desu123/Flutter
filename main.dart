import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Basics',
      theme: ThemeData(
         backgroundColor: Colors.white

         ),
         home: MyHomePage(),

     );
      
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      
      body:
     Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
        children:[

          Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,

      ),
      constraints: BoxConstraints(maxHeight: 100),
      
      
      
     ),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

       children:[
        
         Container(
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            constraints: BoxConstraints(maxHeight: 100,maxWidth: 100),
         ),
         Container(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            constraints: BoxConstraints(maxHeight: 100,maxWidth: 100),
         ),
         Container(
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            constraints: BoxConstraints(maxHeight: 100,maxWidth: 100),
      ), ],),
          Container(
            decoration: BoxDecoration(
              color: Colors.red
            ),
            constraints: BoxConstraints(maxHeight: 100),
         ),
         Container(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            constraints: BoxConstraints(maxHeight: 100),
         ),

         Row(
    
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:[ 
           Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
              
                Container(
                decoration: BoxDecoration(
                color: Colors.purple
                ),
                constraints: BoxConstraints(maxHeight: 100,maxWidth: 100),
  
                ),
                Container(
                decoration: BoxDecoration(
                 color: Colors.white
                 ),
                 constraints: BoxConstraints(maxHeight: 50,maxWidth: 100),
           
                 ),
         
                Container(
                decoration: BoxDecoration(
                 color: Colors.purple
                 ),
                 constraints: BoxConstraints(maxHeight: 100,maxWidth: 100),
           
                 ),]
            ),
         Container(
           decoration: BoxDecoration(
             color:Colors.blueGrey
           ),
           constraints: BoxConstraints(maxHeight: 250,maxWidth: 250),
         )
       
       ]
        )
        ]));
        

    
    
  }
 
}
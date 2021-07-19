import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         backgroundColor: Colors.white,
         primarySwatch:Colors.green,
        

         ),
      home:Home(),
      
    );
  }
}



Widget buildpassword(){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
      Text('Password',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color:Colors.black, ),),
      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
          color: Color(0xFFE0E0E0)),
          height: 60,
          child:TextField(
            keyboardType: TextInputType.visiblePassword,
            style:TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
              horizontal:8,
              vertical:5 
              ),
              hintText:'Please enter your password',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          )
      )
    ],
  );

}


class Home extends StatefulWidget {
 

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
   
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

     return Scaffold(
      body: Container(
        width:width,
       height: height,
        child:SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 120
          ),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              
            Text(
              'CRUX FLUTTER SUMMER GROUP',
              style: TextStyle(fontSize: 40.0,fontWeight:FontWeight.bold,color:Color(0xff2FC4B2))),
            SizedBox(height: 60.0),
            Text('ID Number',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color:Colors.black, ),),
      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
          color: Color(0xFFE0E0E0)),
          height: 60,
          child:TextField(
            autofocus: false,
            keyboardType: TextInputType.text,
            style:TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
              horizontal:8,
              vertical:5 
              ),
              hintText:'Please enter your BITS ID number',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),

            ),
          )
      ),
            SizedBox(height: 30,),
            buildpassword(),
            SizedBox(height: 30.0,),
             SizedBox(
               height: 50,
               width: width,
            child:ElevatedButton(
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Greetings()));
              },
              child:Text('LOG IN'),     
            ),),
            SizedBox(height: 20,), 
            Text('Forgot Password ?',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600,color:Color(0xff2FC4B2) )),
            SizedBox(height: 80.0,),
             GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                },
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account  ',
                    style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w400,color:Colors.black),
                    children: [
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff2FC4B2)
                        ),
                      ),
                    ]
                  ),
                ),
              ),
          
            ] 
        ),
      ),
    ),  
  );
  }
}

class Second extends StatefulWidget {

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool _value = false;
  var __value;
 String? value ; 
 String? _batchVal;
 List _batch=[
   '2020','2019','2018','2017'
 ];
 
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

     return Scaffold(
       
      body: Container(
       width:width,
       height: height,
        child:SingleChildScrollView(
            padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
        
          ),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Center(
                child:Container(
                
                 constraints: BoxConstraints(minHeight: 80,minWidth: width,),
                 decoration: BoxDecoration(color:Color(0xff2FC4B2)),
                 alignment:Alignment.center,
                 child:Text('CRUX FLUTTER SUMMER GROUP',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,),)
              ),),
             SizedBox(height: 20.0,), 
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
          color: Color(0xFFE0E0E0)),
          height: 60,
          child:TextField(
            autofocus: false,
            keyboardType: TextInputType.text,
            onChanged: (text){
               value= text ?? "";
             
      
            },
            style:TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
              horizontal:8,
              vertical:5 
              ),
              hintText:'Please enter your BITS ID number',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),

            ),
          )
      ),
            
            SizedBox(height: 10.0,),
              buildpassword(),
            SizedBox(height: 20.0,),
             
            Text('Batch',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color:Colors.black ),),
            DropdownButton( 
              onChanged: (newValue){
                setState(() {
                  _batchVal=value;
                  
                });
              },
              
              items: _batch.map((value){
                return DropdownMenuItem(
                  value :value,
                  child: Text(value),);
              } ).toList(),
              
             ),
           SizedBox(height: 20.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
               Container(
                 color: Colors.white12,
                 constraints: BoxConstraints(maxHeight: 70,),
                 child: Text('Receive Regular Updates',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600,color:Colors.black ),),
             ),
            Switch(
              value: _value, 
            onChanged: (val){
              setState(() {
                _value=val;
                print(_value);
              }
              );
            }
            ),]),
            SizedBox(height: 30.0,),

           Text('Are you excited for this !!',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600,color:Colors.black ),),
            SizedBox(height: 10,),
           Row(
              mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Radio(
                value:1, 
               groupValue:__value,
               onChanged: (value){
                  setState((){
                  __value = value;
               
               });
               },),
              
               Text('Yes',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600,color:Colors.black ),),
                SizedBox(width: 130,),

               Radio(
                 value: 2, 
               groupValue:__value,
               onChanged: (value){
                setState((){
                  __value = value;
                });
               
               }),
               Text('No',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600,color:Colors.black ),),
             ]),
           SizedBox(height: 20.0,),
           SizedBox(
             height: 50,
             width: width,
            child:ElevatedButton(
              onPressed:() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Greetings()));
              }, 
              child:Text('REGISTER'), 
              
              ),),
            SizedBox(height: 20.0,),
             GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account  ',
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Color(0xff2FC4B2)
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ]
      
    ),),),);
  }
}
//ignore: must_be_immutable
class Greetings extends StatefulWidget {
String? value ;

 Greetings({this.value});

  @override
  _GreetingsState createState() => _GreetingsState(value);
}

class _GreetingsState extends State<Greetings> {
  String? value ;
  
  _GreetingsState(this.value);
  @override
  Widget build(BuildContext context) {
     double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
         width:width,
         height: height,

        child:SingleChildScrollView(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.start,
          
            children:[
              Padding(padding: const EdgeInsets.all(20.0),),
              SizedBox(height: 50.0,),
              FittedBox(alignment:Alignment.center

              ),
              
            Text('CRUX FLUTTER SUMMER GROUP',style: TextStyle(fontSize: 40.0,fontWeight:FontWeight.bold,color:Color(0xff2FC4B2))),
             SizedBox(height: 30.0),
             
            Text(value as String, style: TextStyle(fontSize: 40.0,fontWeight:FontWeight.bold,color:Color(0xff2FC4B2))),
         
            
            SizedBox(height: 60.0),
            Center(
              child:FittedBox(
                child:
            Text('Welcomes you',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color:Colors.black ),),),),
            SizedBox( height: 30.0,),
            Text('Have a great journey ahead!!',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color:Colors.black ),),
            ]
          ))));
     
      
    
  }
}



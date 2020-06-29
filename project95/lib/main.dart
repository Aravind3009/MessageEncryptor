import 'package:flutter/material.dart';
import 'package:project95/popup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00003e),
      body: Center(
         child: Container(
            width: 330.0,
            height: 554.0,
            decoration: BoxDecoration(
            color: Color(0xffc0c0c0),
                border: Border.all(width: 2,color: const Color(0xFFFFFFFF)),
            ),
            
            alignment: Alignment.topCenter,
            child: Column(children: [ // where to position the child
             Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300.0,
              height: 35.0,
              color: Color(0xff000080),
              child: Container(
                margin: const EdgeInsets.only(top: 5),
               child: Text("Welcome to Project95",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pix8'),textAlign: TextAlign.center,),
              ),
            ),
            Container(margin: const EdgeInsets.only(top: 30),),
            Row(
              children: [
            Container(margin: const EdgeInsets.only(left: 10),),
                Image.asset("assets/image/computer.png"),
                Container(
                  child: Text("Read down the following information\nand press the yes button to continue",style: TextStyle(fontSize: 13),),
                )
              ],
            ),
            Container(margin: const EdgeInsets.only(top: 30),),
            Container(
              height: 188,
              width: 279,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(width: 2,color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffffffff),
                    offset: Offset(0, 3),
                    blurRadius: 7 
                  )
                ],
              ),
              child: Container(
                child: Column(
                  children: [
                    Container(margin: const EdgeInsets.only(top: 30),),
                    Text("IMPORTANT READ CAREFULLY:",style: TextStyle(),textAlign: TextAlign.center,),
                    Container(margin: const EdgeInsets.only(top: 15),),
                    Container(margin: const EdgeInsets.only(left: 15),
                      child: Text("This application is based upon to\ncreate a encrypted information and password and you can copy to clipboard and save in your Files"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child:Text("Do you accept the information for this project. If No see the github repo, to run the application Accept it!")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
              height: 37,
              width: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffc0c0c0),
                border: Border.all(width: 2,color: const Color(0xffaea7a7)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    offset: Offset(0, 3),
                    blurRadius: 6
                  )
                ],
              ),
              child:InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Popup()),
                );
                },
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text("Yes",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
                ),
              ),
                    Container(margin: const EdgeInsets.only(left: 55)),
                Container(
              height: 37,
              width: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffc0c0c0),
                border: Border.all(width: 2,color: const Color(0xffaea7a7)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    offset: Offset(0, 3),
                    blurRadius: 6
                  )
                ],
              ),
              child:InkWell(
                onTap: (){},
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text("No",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
                ),
                ),
              ],
            )
            ],
            ),
      )
      ),
    );
  }
}
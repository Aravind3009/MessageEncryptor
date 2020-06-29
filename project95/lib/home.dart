import 'package:flutter/material.dart';
import 'package:project95/decrypt.dart';
import 'package:project95/encrypt.dart';
import 'package:project95/savenote.dart';
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Project 95",style: TextStyle(fontSize:25,color: Colors.white),
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Color(0x708383F3),
      ),
      backgroundColor: Color(0xff00003e),
      body: Center(
        child:Container(
          margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Column(
              children: [
                InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Encrypt()));
                },
                child:Column(
                  children: [
                    Container(
              width: 100,
              color: Colors.transparent,
              child: Image.asset("assets/image/folders.png",fit: BoxFit.cover,),
            ),
            Text("Encrypt Password",style: TextStyle(color: Colors.white,)),
                  ],
                )
                ),
          ],
            ),
            Container(margin: const EdgeInsets.only(top: 20),),
             Column(
              children: [
                InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Decrypt()));
                },
                child:Column(
                  children: [
                    Container(
              width: 100,
              color: Colors.transparent,
              child: Image.asset("assets/image/folders.png",fit: BoxFit.cover,),
            ),
            Text("Decrypt Password",style: TextStyle(color: Colors.white,)),
                  ],
                )
                ),
          ],
            ),
            Container(margin: const EdgeInsets.only(top: 20),),
             Column(
              children: [
               InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Save()));
                },
                child:Column(
                  children: [
                    Container(
              width: 100,
              color: Colors.transparent,
              child: Image.asset("assets/image/notepad.png",fit: BoxFit.cover,),
            ),
            Text("Save your Notes",style: TextStyle(color: Colors.white,)),
                  ],
                )
                ),
          ],
            ),
          ]
        ),
        ),
      ),
    );
  }
}
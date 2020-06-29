import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_string_encryption/flutter_string_encryption.dart';
import 'dart:io';
import 'dart:async';

class Decrypt extends StatefulWidget {
  Decrypt({Key key}) : super(key: key);

  @override
  _DecryptState createState() => _DecryptState();
}

class _DecryptState extends State<Decrypt> {
 TextEditingController controller = TextEditingController();
 TextEditingController controller1 = TextEditingController();



void decrypting(){
    setState(() async {
      final cryptor = new PlatformStringCryptor();
      final text = "jIkj0VOLhFpOJSpI7SibjA==:RZ03+kGZ/9Di3PT0a3xUDibD6gmb2RIhTVF+mQfZqy0=";
      final decrypted = await cryptor.decrypt(controller.text, text);
      print(controller.text);
      controller1.text = decrypted;
    });
  }
 
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
      body: ListView(
        children: [
          Container(
        margin: const EdgeInsets.only(top: 20),
        height: 700,
        child: Column(
          children: [
            Center(
            ),
            Column(
              children: [
            Container(margin: const EdgeInsets.only(top: 50),),
             Container(
            width: 340.0,
            height: 500,
            decoration: BoxDecoration(
            color: Color(0xffc0c0c0),
                border: Border.all(width: 2,color: const Color(0xFFFFFFFF)),
            ),
            alignment: Alignment.topCenter,
            child: Column(children: [ // where to position the child
             Container(
              margin: const EdgeInsets.only(top: 5),
              width: 300.0,
              height: 35.0,
              color: Color(0xff000080),
              child: Container(
                margin: const EdgeInsets.only(top: 5),
               child: Text("Decrypt Passowrd/Text",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pix8'),textAlign: TextAlign.center,),
              ),
            ),
            Container(margin: const EdgeInsets.only(top: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
              width: 317,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(margin: const EdgeInsets.only(top: 20),),
                  Container(margin: const EdgeInsets.only(left: 20),
                  child:Text("Enter the Text/Password",style: TextStyle(fontSize: 15),)),
                  Container(padding: const EdgeInsets.all(20),
                  child:TextField(
                    controller: controller,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  )),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
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
                onTap: decrypting,
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text("Decrypt",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
                ),
                ),
                ],),
                  Container(margin: const EdgeInsets.only(top: 20),),
                  Container(margin: const EdgeInsets.only(left: 20),
                  child:Text("Enter the Text/Password",style: TextStyle(fontSize: 15),)),
                  Container(padding: const EdgeInsets.all(20),
                  child:TextField(
                    controller: controller1,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  )),
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
                    final data = ClipboardData(text: controller1.text);
                    Clipboard.setData(data);
                },
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: Icon(Icons.content_copy),
              ),
                ),
                ),
               
                    ],
                  ),
                Container(margin: const EdgeInsets.only(top: 20),),
                ],
              ),
                 ),
              ],
            ),
            
            ],
      ),
        )
          ],
        ),
        ],))
        ],
      ),
    );
  }
}
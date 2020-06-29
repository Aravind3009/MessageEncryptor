import 'package:flutter/material.dart';
import 'package:project95/home.dart';
class Popup extends StatefulWidget {
  Popup({Key key}) : super(key: key);

  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00003e),
      body: Center(
        child: Container(
            width: 340.0,
            height: 200.0,
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
               child: Text("Thanks for Accepting",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pix8'),textAlign: TextAlign.center,),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10,left: 10),
                  width: 40,
                child:Image.asset("assets/image/lock.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20,top: 20),
                  child: Text("Setup was sucessfully completed.\nNow you can accept this and continue\n your work",style: TextStyle(fontSize: 13),textAlign: TextAlign.justify,),
                ),
              ],
            ),
            Container(margin: const EdgeInsets.only(top: 25)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text("Ok",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
                ),
                ),
            ],
      ),
        )
      )
    );
  }
}
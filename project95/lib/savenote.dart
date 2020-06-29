import 'package:flutter/material.dart';
import 'package:project95/home.dart';

class Save extends StatefulWidget {
  Save({Key key}) : super(key: key);

  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<Save> {
  
 TextEditingController controller = TextEditingController();

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
        child: Column(
          children: [
            Center(
            ),
            Column(
              children: [
            Container(margin: const EdgeInsets.only(top: 50),),
             Container(
            width: 340.0,
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
               child: Text("Save your Notes",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pix8'),textAlign: TextAlign.center,),
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
                color: Color(0xFFC2C1C1),
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
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    maxLines: 15,
                  ),
                ],
              ),
                 ),
              ],
            ),
            //Container(margin:  const EdgeInsets.only(top: 100),)
            Container(margin: const EdgeInsets.only(top: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
              height: 37,
              width: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFFAFADAD),
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
                child: Text("Cancel",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
                ),
                ),
            Container(margin: const EdgeInsets.only(left: 50)),
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
                child: Text("Save",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
                ),
                ),
              ],
            ),
            Container(margin: const EdgeInsets.only(top: 25)),
            ],
            
      ),
        ),
          ],
        ),
        
        ],))
        ],
      ),
    );
  }
}


     /* body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              Text("Save your Text Here",style: TextStyle(fontSize: 20),),
              Container(margin: const EdgeInsets.only(top: 20)),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: controller,
                  maxLines: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
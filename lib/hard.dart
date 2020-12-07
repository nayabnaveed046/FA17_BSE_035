import 'package:flutter/material.dart';
import 'main_page.dart';
import 'dart:math';
import 'dart:io';
import 'option_gues.dart';
import 'dart:async';
guss correct=guss();
class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  int rold=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hard Move"),
    ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text('Dice Roller', textAlign:TextAlign.left , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            ListTile(
              title: Text('Dice Rolling', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>main_page()));
              },
            ),
            ListTile(
              title: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              onTap: () {
                exit(0);
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dice Roller",style: TextStyle(fontSize: 50,color: Colors.black),),
            SizedBox(
              height: 70,
            ),

            Container(

              decoration: BoxDecoration(
              ),
              height: 200,
              width: 200,

              child:FlatButton(onPressed: (){
                setState(() {
                  rold=Random().nextInt(5)+1;
                  correct.get_correct(rold);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>guss()));
                });
              },
                child:Image(image: AssetImage('images/dice$rold.png')),
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}





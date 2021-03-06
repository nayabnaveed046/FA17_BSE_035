import 'package:flutter/material.dart';
import 'simple.dart';
import 'hard.dart';
import 'about_me.dart';
import 'dart:io';
import 'package:animated_widgets/animated_widgets.dart';
class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mega Dice Roller"),
      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.purple,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text('Dice Rolling', textAlign:TextAlign.left , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),

            ListTile(
              title: Text('About Us', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
                });
                ;
              },
            ),
            ListTile(
              title: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              onTap: () {
                exit(0);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TranslationAnimatedWidget(

              values: [
                Offset(0, 200),
                Offset(0, 250),
                Offset(0, 0)
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  Text("Kindly, select anyone mode and enjoy Mega dice roller" , style: TextStyle(color: Colors.black, fontSize: 20), ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            TranslationAnimatedWidget.tween(
              translationDisabled: Offset(0, 200),
              translationEnabled: Offset(0, 0),
              child:
              OpacityAnimatedWidget.tween(
                opacityDisabled: 0,
                opacityEnabled: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(right: 30),
                      child: FlatButton(onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>simple()));
                        });
                      }
                          , child: Text("Simple",style: TextStyle(fontSize: 30,color: Colors.white),)),
                    ),

                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(left: 30),
                      child: FlatButton(onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>hard()));
                        });
                      }
                          , child: Text("Hard",style: TextStyle(fontSize: 28,color: Colors.white),)),
                    ),
                  ],
                ), /* your widget */
              ),
            ),
            ScaleAnimatedWidget.tween(
                duration: Duration(milliseconds: 600),
                scaleDisabled: 0.5,
                scaleEnabled: 1,
                child:   Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.only(left: 200,top: 200),

                )
            ),

          ],
        ),
      ),
    );
  }
}

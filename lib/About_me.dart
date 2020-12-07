import 'main_page.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'main_page.dart';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
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
                  child: Text('Dice Rolling', textAlign:TextAlign.left , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            ListTile(
              title: Text('Home Screen', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50,),
            CircleAvatar(
              minRadius: 10,
              maxRadius: 100,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.cyan,
                ),
                SizedBox(width: 10,),
                Text('Nayab Naveed', style: TextStyle(fontSize: 20),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 80,
                  color: Colors.cyan,
                ),
                SizedBox(width: 30,),
                Text('03000000000', style: TextStyle(fontSize: 20),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail_outline,
                  size: 80,
                  color: Colors.cyan,
                ),
                SizedBox(width: 10,),
                Text('Nayabnaveed046@gmail.com', style: TextStyle(fontSize: 20),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_hp/screen/appoinment.dart';
import 'package:internship_hp/screen/message.dart';
import 'package:internship_hp/screen/profile.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: Column(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.lightBlueAccent],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft)),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(3, 4, 94, 1)),
                  ),
                  Text(
                    "Dr. Johny English",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Profile();
              }));
            },
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "MY PROFILE",
              style: TextStyle(
                fontFamily: "Monsterrat",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Appointment();
              }));
            },
            leading: Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
            title: Text(
              "APPOINTMENT",
              style: TextStyle(
                  fontFamily: "Monsterrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Message();
              }));
            },
            leading: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text(
              "MESSAGE",
              style: TextStyle(
                  fontFamily: "Monsterrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.access_alarm,
              color: Colors.white,
            ),
            title: Text(
              "REMINDER",
              style: TextStyle(
                  fontFamily: "Monsterrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              "SETTING",
              style: TextStyle(
                  fontFamily: "Monsterrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

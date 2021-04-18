import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: costumeAppBar(context),
        body: ListView(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(

                  height: 180,
                  width: double.infinity,
                  color: Colors.blue,
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                ),
                Positioned(
                  top: 110,
                    left: 120,
                    child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25.0,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              height: MediaQuery.of(context).size.width * 1 / 12,
              width: double.infinity,
              child: Text(
                "Personal Information",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1.5,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Johnny English"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Username",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1.5,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "chopper"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1.5,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "johnny@gmail.com"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Password",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1.5,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Specialist",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1.5,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Surgeon"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 170,
                    height: 40,
                    child: FlatButton(
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.orange)),
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 170,
                    height: 40,
                    child: FlatButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.red)),
                      child: Text(
                        "CANCEL",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget costumeAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
      titleSpacing: 10,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.lightBlueAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
      ),
      title: Text(
        "My Profile",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrrat",
            color: Colors.white),
      ),
    );
  }
}

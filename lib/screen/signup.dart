import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blueGrey, Colors.lightBlueAccent],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft)),
            ),
            ListView(
              children: <Widget>[
                Flexible(flex: 2, child: signupLogo()),
                Flexible(flex: 3,child: signUpForm()),
                Flexible(flex: 1,child: backtoLoginletter(context))
              ],
            )
          ],
        ),
      ),
    );
  }
}

Container signupLogo() {
  return Container(
    margin: EdgeInsets.only(top: 100),
    alignment: Alignment.topCenter,
    child: Text(
      "SIGN UP",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Montserrat",
          fontSize: 50,
          color: Colors.white),
    ),
  );
}

Container signUpForm() {
  return Container(
    color: Colors.transparent,
    padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
    child: Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
              labelText: "USERNAME",
              labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
        SizedBox(
          height: 15.0,
        ),
        TextField(
          autofocus: false,
          obscureText: true,
          decoration: InputDecoration(
              labelText: "PASSWORD",
              labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "FIRST NAME",
              labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
        SizedBox(
          height: 15.0,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "LAST NAME",
              labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
        SizedBox(
          height: 40.0,
        ),
        SizedBox(
          width: 170,
          height: 40,
          child: FlatButton(
            onPressed: () {},
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.blue)),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
        )
      ],
    ),
  );
}

Container backtoLoginletter(BuildContext context) {
  return Container(

    margin: EdgeInsets.only(top: 40.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Already have an account?",
          style: TextStyle(fontFamily: "Montserrat", color: Colors.black),
        ),
        SizedBox(width: 5,),
        GestureDetector(onTap: (){ Navigator.pop(context) ;}, child: Text(" Log In !",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,color: Colors.white),))
      ],
    ),
  );
}



import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:internship_hp/API/API.dart';
import 'package:internship_hp/screen/homepage.dart';
import 'package:internship_hp/screen/signup.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:mysql1/mysql1.dart';


class Login extends StatelessWidget {
  static TextEditingController usernameController = new TextEditingController();
  static TextEditingController passwordController = new TextEditingController();
  final connection = API(hostEd: '20.188.112.22',port: 3306,user: 'student',db: 'demo_demo');

  

  Future <List> _login(String username,String password) async{
    var settings = ConnectionSettings(
        host: '20.188.112.22',
        port: 3306,
        user: 'student',
        db: 'demo_demo'
    );
    var conn = await MySqlConnection.connect(settings);
    var result = await conn.query('SELECT * FROM users WHERE username = ? AND password = ?',[username,password]);
    print("asdhjubfkjhasbdfkjbasdfkjbashfjaskjbfkjasbdfhjasbdfkjbhasdfbasd fkjhbashfjashfjbaskjbfkjasbdfjasf");
    for (var row in result) {
      print('Name: ${row[0]}, password: ${row[1]}');
    };


  }
  control(String username,String password){
    _login(username, password);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.lightBlueAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          ListView(
            children: <Widget>[
              NHSLogo(),
              loginForm(context),
              signUpText(context)
            ],
          ),
        ]),
      ),
    );
  }
  Container NHSLogo() {
    return Container(
      color: Colors.transparent,
      height: 300,
      width: 300,
      margin: EdgeInsets.only(left: 15),
      child:Image(image: AssetImage('asset/image/White-03.png'),),
    );
  }

  Container loginForm(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller:usernameController ,
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
            controller: passwordController,
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
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            child: InkWell(
              onTap: () {},
              child: Text(
                "Forgot password ?",
                style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 170,
            height: 40,
            child: FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.blue)),
              child: Text(
                "Login",
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

  Container signUpText(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
            style: TextStyle(fontFamily: "Montserrat", color: Colors.black),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
              },
              child: Text(
                "Sign Up!",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ))
        ],
      ),
    );
  }

}


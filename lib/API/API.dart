import 'dart:async';

import 'package:mysql1/mysql1.dart';
class API {

  var settings;
   API({String hostEd,int port,String user, String db}) {
     connection(hostEd,port,user,db);


   }
   Future connection (String hostEd,int port,String user, String db) async{
     settings = MySqlConnection.connect(ConnectionSettings(
         host: hostEd,
         port: port,
         user: user,
         db: db
     ));
   }
   Future  login(String username, String password) async{
     var result = await settings.query('SELECT * FROM users WHERE username = ? AND password = ?',[username,password]);
         return result;

   }



}
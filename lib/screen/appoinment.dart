import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_hp/repository/localMemory.dart';
import 'package:intl/intl.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime hariIni = DateTime.now();
  var lokal = localMemory();
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: costumeAppBar(context),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12),
                      child: Text(
                        costumeDate(hariIni),
                        style:
                            TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                      )),
                  SizedBox(
                    width: 2,
                    child: Text(
                      "|",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: GestureDetector(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1963),
                                  lastDate: DateTime(2222))
                              .then((value) {
                            setState(() {
                              hariIni = value;
                            });
                          });
                        },
                        child: Icon(
                          Icons.calendar_today_rounded,
                        )),
                  )
                ],
              ),
            ),SizedBox(height: 15,)
            ,
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text("List Of Patients", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 24,fontFamily: "Montserrat"),),
            ),
            SizedBox(height: 15,),
            Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),
            Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),Card(child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                const ListTile(
                  
                  leading: Icon(Icons.person),
                  title: Text("Aldo Wisnu Pratama"),
                  subtitle: Text("Sublime"),
                )
              ],
            ),),
            SizedBox(height: 15,),














          ],
        ),
      ),
    );
  }

  Widget costumeAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(onTap: (){
        Navigator.pop(context);
      },child: Icon(Icons.arrow_back)),
      titleSpacing: 10,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.lightBlueAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
      ),
      title: Text(
        "Appointment",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrrat",
                
            color: Colors.white),
      ),
    );
  }

  String costumeDate(DateTime now) {
    if (now != null) {
      return "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
    }
    return "Please select the date";
  }
  Widget cardView(){
    return ListView(
      children: <Widget>[
        Card(child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget> [
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Aldo Wisnu Pratama"),
              subtitle: Text("Sublime"),
            )
          ],
        ),),

      ],
    );

  }
}




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_hp/repository/MessageJSON.dart';
import 'package:internship_hp/repository/localMemory.dart';
import 'package:internship_hp/repository/localMemory.dart';

class Message extends StatefulWidget {

  @override
  _MessageState createState() => _MessageState();
}



class _MessageState extends State<Message> {
  List<Widget> itemsdata = [];

  void getPostsData() {
    List<dynamic> responseList =MessageJso;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.blue,width: 2))),

          margin: EdgeInsets.all(5),
          child: ListTile(
            leading: Icon(Icons.photo),
            title: Text("${post["name"]}"),
            subtitle: Text("${post["brand"]}"),
          )));
    });
    setState(() {
      itemsdata = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: costumeAppBar(context),
        body: ListView.builder(
            itemCount: itemsdata.length,
            itemBuilder: (BuildContext context, int index) {
              return itemsdata[index];
            }),
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
        "Message",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrrat",
            color: Colors.white),
      ),
    );
  }
}

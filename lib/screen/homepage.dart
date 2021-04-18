import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_hp/model/ArticleModel.dart';
import 'package:internship_hp/repository/News.dart';
import 'package:internship_hp/screen/blognewstile.dart';
import 'package:internship_hp/screen/drawer/MainDrawer.dart';
import 'package:internship_hp/screen/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.listofNews;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 80,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.lightBlueAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          title: Text(
            "NHS News",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrrat",
                color: Colors.white),
          ),
        ),
        drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Color.fromRGBO(0, 119, 182, 1)),
          child: MainDrawer(),
        ),
        body: _loading
            ? Center(
                child: Container(
                child: CircularProgressIndicator(),
              ))
            : ListView(
          children: <Widget> [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 15, left: 25),
              alignment: Alignment.topLeft,
              child: Text(
                "Hello, Dr. Johny English",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25) ,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: articles.length,
                  itemBuilder: (context,index){
                    return BlogTile(imageUrl: articles[index].urlToImage, title: articles[index].title, desc: articles[index].description, url: articles[index].url,);
                  }),
            )
          ],
        )
      ),
    );
  }
}

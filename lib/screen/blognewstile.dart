import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_hp/screen/articleswebview.dart';

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc, url;
  BlogTile(
      {@required this.imageUrl, @required this.title, @required this.desc, @required this.url});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ArticlesWebView( blogUrl: url,)));

      },
      child: Container(

        decoration: BoxDecoration(
          color: Color.fromRGBO(219, 246, 233,1),
            borderRadius: BorderRadius.circular(20)),

        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
                child: FadeInImage.assetNetwork(placeholder: 'asset/image/brokenimage1.jpg',image: imageUrl)),
            SizedBox(height: 8,),
            Text(title,style: TextStyle(fontSize: 17,color: Colors.black87,fontWeight: FontWeight.w500),),
            SizedBox(height: 8,),
            Text(desc,style: TextStyle(color: Colors.black54),)],
        ),
      ),
    );
  }
}

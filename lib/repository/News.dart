import 'dart:convert';
import 'dart:io';

import 'package:internship_hp/model/ArticleModel.dart';
import  'package:http/http.dart' as http;
class  News{
  List <ArticleModel> listofNews = new List();

  // asyn karna ini background process
  Future<void> getNews() async{
    String newsUrl = "https://newsapi.org/v2/top-headlines?country=gb&category=health&apiKey=f512263d6ec14023bd5eee2f31711b7d";
 
    var response = await http.get(Uri.parse(newsUrl));


    var jsonData = jsonDecode(response.body);
    if(jsonData['status']=="ok"){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!= null && element["description"]!= null){
          ArticleModel articleModel  = new ArticleModel(
            author: element['author'],
            title: element['title'],
            url: element['url'],
            description: element['description'],
            content: element['content'],
            urlToImage: element['urlToImage']
          );
          listofNews.add(articleModel);
        }
      });
    }

  }

}
import 'dart:convert';

import '/models/newsModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<NewsModel> news = <NewsModel>[];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=db589d35ecfe487b81b0462534d6fec0";
    var response = await http.get(Uri.parse(url));
    var jsonData = json.decode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          //to ensure the image and description of news
          NewsModel newsModel = NewsModel(
              author: element["author"],
              title: element["title"],
              url: element["url"],
              description: element["description"],
              urlToImage: element["urlToImage"],
              publishedAt: element["publishedAt"],
              content: element["content"]);
          news.add(newsModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<NewsModel> news = <NewsModel>[];

  Future<void> getNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=db589d35ecfe487b81b0462534d6fec0";
    var response = await http.get(Uri.parse(url));
    var jsonData = json.decode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          //to ensure the image and description of news
          NewsModel newsModel = NewsModel(
              author: element["author"],
              title: element["title"],
              url: element["url"],
              description: element["description"],
              urlToImage: element["urlToImage"],
              publishedAt: element["publishedAt"],
              content: element["content"]);
          news.add(newsModel);
        }
      });
    }
  }
}

import 'package:flutter/cupertino.dart';

class NewsModel{
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  NewsModel({required this.author, required this.title, required this.url, required this.description, required this.urlToImage, required this.publishedAt, required this.content});

}
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/UIScreens/article_view.dart';
import 'package:news_app/UIScreens/category_news.dart';
import 'package:news_app/utils/data.dart';
import 'package:news_app/utils/news.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/models/newsModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Categorymodel> categories = <Categorymodel>[];
  List<NewsModel> newses = <NewsModel>[];
  bool _loading = true;

  @override
  void initState() {
    categories = getCategories();
    getNews();
    super.initState();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    newses = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("News", style: TextStyle(color: Colors.white)),
            Text(
              "Application",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: _loading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : Container(
              child: Column(
                children: [
                  //categories
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 16),
                    height:
                        70, //we have to specify container height for making list in horizontal axis
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true, //to use listview in a container
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Categorytile(
                            imgUrl: categories[index].imageUrl.toString(),
                            categoryName:
                                categories[index].categoryName.toString(),
                          );
                        }),
                  ),
                  //Blogs
                  Container(
                    child: Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            // physics: ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: newses.length,
                            itemBuilder: (context, index) {
                              return Blogtile(
                                imgUrl: newses[index].urlToImage,
                                title: newses[index].title.toString(),
                                description:
                                    newses[index].description.toString(),
                                url: newses[index].url,
                              );
                            }),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class Categorytile extends StatelessWidget {
  final String imgUrl, categoryName;
  const Categorytile(
      {Key? key, required this.imgUrl, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryNewsView(
                      category: categoryName.toLowerCase(),
                    )));
        //Function
      },
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl: imgUrl,
                  width: 120,
                  height: 60,
                  fit: BoxFit.cover,
                )),
            Container(
              width: 120,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                categoryName.toString(),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Blogtile extends StatelessWidget {
  final imgUrl, title, description, url;
  const Blogtile(
      {Key? key, this.imgUrl, this.title, this.description, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      imgUrl: imgUrl,
                      url: url,
                    )));
      },
      child: Container(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(imgUrl)),
            Text(
              title,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

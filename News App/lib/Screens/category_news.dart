import 'package:flutter/material.dart';
import '/Screens/article_view.dart';
import '/helper/news.dart';
import '/models/newsModel.dart';

class CategoryNewsView extends StatefulWidget {
  final String category;
  const CategoryNewsView({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryNewsViewState createState() => _CategoryNewsViewState();
}

class _CategoryNewsViewState extends State<CategoryNewsView> {
  List<NewsModel> newses = <NewsModel>[];
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    getCategoryNews();
    super.initState();
  }

  getCategoryNews() async {
    CategoryNews newsClass = CategoryNews();
    await newsClass.getNews(widget.category);
    newses = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News", style: TextStyle(color: Colors.black)),
            Text(
              "App",
              style: TextStyle(color: Color(0xffe46b10)),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      16), //we are taking a false space to center the title
            ),
          )
        ],
      ),
      body: _loading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : Container(
              child: Column(
                children: [
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
                  color: Colors.black87),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.black54,
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

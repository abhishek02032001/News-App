import 'package:flutter/material.dart';
import 'package:news/helper/data.dart';
import 'package:news/helper/news.dart';
import 'package:news/models/categoryModel.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/widgets/categoryCard.dart';
import 'package:news/widgets/newsCard.dart';

class CategoryNews extends StatefulWidget {
  final String categoryName;

  const CategoryNews({Key key, this.categoryName}) : super(key: key);
  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  final _scrollController = ScrollController();
  List<CategoryModel> _category = [];
  List<NewsModel> _news = [];

  @override
  void initState() {
    super.initState();
    _category = getcategories();
    getNews();
  }

  getNews() async {
    News news = News();
    await news.getNews(widget.categoryName);
    setState(() {
      _news = news.news;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Container(
                  height: 70.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _category.length,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        categoryName: _category[index].categoryName,
                        imageUrl: _category[index].imageUrl,
                      );
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  ListView.builder(
                    controller: _scrollController,
                    shrinkWrap: true,
                    itemCount: _news.length,
                    itemBuilder: (context, index) {
                      return NewsCard(
                        title: _news[index].title,
                        description: _news[index].description,
                        imgUrl: _news[index].imgUrl,
                        url: _news[index].newsUrl,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

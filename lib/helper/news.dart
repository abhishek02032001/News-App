import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/models/newsModel.dart';

class News {
  List<NewsModel> news = [];

  Future<void> getNews(String category) async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=0f5dd3af4a6145909f231e19ad32fdf0'));
    var data = jsonDecode(response.body);
    if (data['status'] == "ok") {
      data['articles'].forEach((val) {
        if ((val['urlToImage'] != null) && (val['description'] != null)) {
          print("Success");
          NewsModel _newsModel = NewsModel(
            title: val['title'],
            description: val['description'],
            imgUrl: val['urlToImage'],
            newsUrl: val['url'],
          );
          news.add(_newsModel);
        }
      });
    } else {
      print("Unsuccessful");
    }
  }
}

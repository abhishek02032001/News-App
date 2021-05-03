import 'package:flutter/material.dart';
import 'package:news/views/newsView.dart';

class NewsCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;
  final String url;

  const NewsCard({Key key, this.imgUrl, this.title, this.description, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Clicked");
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return NewsView(
            newsUrl: url,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imgUrl,
                width: MediaQuery.of(context).size.width - 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Text(
                description,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

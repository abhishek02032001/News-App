import 'package:flutter/material.dart';
import 'package:news/views/category.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String categoryName;

  const CategoryCard({Key key, this.imageUrl, this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return CategoryNews(
            categoryName: categoryName,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16.0, left: 3.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.network(
                imageUrl,
                width: 150.0,
                height: 75.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 150.0,
              height: 75.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:news/models/categoryModel.dart';

List<CategoryModel> getcategories() {
  List<CategoryModel> _category = [];

  // 1
  CategoryModel _categoryModel1 = CategoryModel();
  _categoryModel1.categoryName = "Business";
  _categoryModel1.imageUrl =
      "https://images.unsplash.com/photo-1612550761236-e813928f7271?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";

  _category.add(_categoryModel1);

  // 2
  CategoryModel _categoryModel2 = CategoryModel();
  _categoryModel2.categoryName = "Entertainment";
  _categoryModel2.imageUrl =
      "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=666&q=80";

  _category.add(_categoryModel2);

  // 3
  CategoryModel _categoryModel4 = CategoryModel();
  _categoryModel4.categoryName = "Health";
  _categoryModel4.imageUrl =
      "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8aGVhbHRofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";

  _category.add(_categoryModel4);

  // 4
  CategoryModel _categoryModel5 = CategoryModel();
  _categoryModel5.categoryName = "Science";
  _categoryModel5.imageUrl =
      "https://images.unsplash.com/photo-1567427018141-0584cfcbf1b8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c2NpZW5jZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";

  _category.add(_categoryModel5);

  // 5
  CategoryModel _categoryModel6 = CategoryModel();
  _categoryModel6.categoryName = "Technology";
  _categoryModel6.imageUrl =
      "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";

  _category.add(_categoryModel6);

  return _category;


}

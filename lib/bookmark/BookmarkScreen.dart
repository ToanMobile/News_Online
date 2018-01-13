import 'package:flutter/material.dart';
import 'package:news_online/category/CategoriesScreen.dart';

class BookmarkScreen extends StatefulWidget {
  BookmarkScreen({Key key}) : super(key: key);

  @override
  BookmarkState createState() => new BookmarkState();
}

class BookmarkState extends State<BookmarkScreen> {
  void intState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text('BookmarkScreen'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_online/source/SourceScreen.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({Key key}) : super(key: key);

  @override
  CategoriesState createState() => new CategoriesState();
}

class CategoriesState extends State<CategoriesScreen> {
  void intState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text('CategoriesScreen'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_online/feed/FeedScreen.dart';

class SourceScreen extends StatefulWidget {
  SourceScreen({Key key}) : super(key: key);

  @override
  SourceState createState() => new SourceState();
}

class SourceState extends State<SourceScreen> {
  void intState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text('SourceScreen'),
    );
  }
}

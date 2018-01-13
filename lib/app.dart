import 'package:flutter/material.dart';
import 'package:news_online/common/services.dart';
import 'package:news_online/feed/FeedScreen.dart';
import 'package:news_online/category/CategoriesScreen.dart';
import 'package:news_online/source/SourceScreen.dart';
import 'package:news_online/bookmark/BookmarkScreen.dart';
class NewsOnline extends StatefulWidget {
  const NewsOnline({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new NewsOnlineAppState();
  }
}

class NewsOnlineAppState extends State<NewsOnline>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  Page _currentTab;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: PAGE.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _currentTab = PAGE[_controller.index];
      });
    });
    _currentTab = PAGE[_controller.index];
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = new ThemeData(
        primarySwatch: _currentTab.color,
        primaryColor: _currentTab.color,
        accentColor: _currentTab.color,
        brightness: Brightness.dark);
    return new MaterialApp(
        title: _currentTab.text,
        theme: themeData,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(_currentTab.text),
            bottom: new TabBar(
              controller: _controller,
              isScrollable: false,
              indicatorColor: themeData.textTheme.title.color,
              tabs: PAGE.map((Page page) {
                return new Tab(
                    icon: new ImageIcon(
                          new AssetImage('assets/icons/${page.icon}')));
              }).toList(),
            ),
            centerTitle: true,
          ),
          body: new TabBarView(controller: _controller, children: PAGE.map((Page page){
            switch(page.service){
              case Service.HOME:
                return new FeedScreen();
                break;
              case Service.CATEGORY:
                return new CategoriesScreen();
                break;
              case Service.SOURCE:
                return new SourceScreen();
                break;
              case Service.BOOKMARK:
                return new BookmarkScreen();
                break;
            }
          }).toList())));
  }
}

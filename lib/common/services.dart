import 'constrant.dart';
import 'package:flutter/material.dart';

enum Service { HOME, CATEGORY, SOURCE, BOOKMARK }

class Page {
  Page({this.service, this.text, this.icon, this.color});

  final Service service;
  final String text;
  final String icon;
  final Color color;
}

// ignore: non_constant_identifier_names
final List<Page> PAGE = <Page>[
  new Page(
      service: Service.HOME,
      text: Strings.TAB_HOME,
      icon: 'ycombinator.png',
      color: Colors.deepOrange),
  new Page(
      service: Service.CATEGORY,
      text: Strings.TAB_CATEGORY,
      icon: 'reddit.png',
      color: Colors.blue),
  new Page(
      service: Service.SOURCE,
      text: Strings.TAB_SOURCE,
      icon: 'imgur.png',
      color: Colors.amber),
  new Page(
      service: Service.BOOKMARK,
      text: Strings.TAB_BOOKMARK,
      icon: 'imgur.png',
      color: Colors.green)
];

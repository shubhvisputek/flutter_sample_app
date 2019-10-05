import 'package:flutter/material.dart';

class AppIntro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppIntroState();
  }
}

class _AppIntroState extends State<AppIntro> {

  Widget getMainView(BuildContext context) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('App Intro'),
      // ),
      body: getMainView(context),
    );
  }
}

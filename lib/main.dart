import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey _titleThemeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _titleThemeKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
              title: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
      ),
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        body: MyHomePage(),
        appBar: AppBar(
          textTheme: Theme.of(context).appBarTheme.textTheme,
          title: Text(
            "Hi Thursday",
          ),
          elevation: 0,
        ),
      ),
    );
  }
}

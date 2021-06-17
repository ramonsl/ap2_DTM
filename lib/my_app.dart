import 'package:flutter/material.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //unselectedWidgetColor: Colors.white,  //Radio unselected color default
        unselectedWidgetColor: Colors.white,
        scaffoldBackgroundColor: Color(0xFF282A36),
      ),
      home: HomePage(),
    );
  }
}
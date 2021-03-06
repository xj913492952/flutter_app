import 'package:flutter/material.dart';
import 'package:flutter_app/Routes.dart' as mRoutes;
import 'package:flutter_app/splash/GuidePage.dart';
import 'package:flutter_app/splash/SplashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: GuidePage(),
      //initialRoute: mRoutes.splashPage, // 名为"/"的路由作为应用的首页
      routes: mRoutes.routes,
    );
  }
}



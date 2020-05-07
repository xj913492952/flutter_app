import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/login/LoginPage.dart';
import 'package:flutter_app/splash/GuidePage.dart';
import 'package:flutter_app/splash/SplashPage.dart';

import 'home/HomePage.dart';

final String homePage = 'homePage';
final String splashPage = '/splashPage';
final String loginPage = '/loginPage';
final String guidePage = '/loginPage';

// 配置路由命名信息
final routes = {
  splashPage: (context) => SplashPage(),
  loginPage: (context) => LoginPage(),
  homePage: (context) => MyHomePage(),
  guidePage: (context) => GuidePage()
};

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转错误'),
        centerTitle: true,
      ),
    );
  }
}

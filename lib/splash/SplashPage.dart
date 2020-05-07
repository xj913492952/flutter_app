import 'dart:async';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_app/Routes.dart' as mRoutes;

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  Timer mTime;

  void startTimer() {
    Duration timeout = Duration(seconds: 3);
    print('currentTime=' + DateTime.now().toString());
    mTime = Timer(timeout, () {
      //到时回调
      print('afterTimer=' + DateTime.now().toString());
      skipToMain();
    });
  }

  void skipToMain() {
    mTime.cancel();
    mTime = null;
    Navigator.pushReplacementNamed(context, mRoutes.loginPage);
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: window.physicalSize.width,
      height: window.physicalSize.height,
      color: Color(0xfff5f5f5),
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'images/2.0x/ic_splash.jpg',
          width: window.physicalSize.width,
          height: window.physicalSize.height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

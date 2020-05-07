import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: window.physicalSize.width,
      height: window.physicalSize.height,
      color: Color(0xfff5f5f5),
      child: Container(
        alignment: Alignment.center,
        child: PageView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          controller: PageController(
            initialPage: 0,
            viewportFraction: 1,
            keepPage: true,
          ),
          physics:BouncingScrollPhysics(),
          pageSnapping: true,
          onPageChanged: (index) {
            //监听事件
            print('index=====$index');
          },
          children: <Widget>[
            Container(
              color: Colors.tealAccent,
              child: Center(
                child: Text(
                  '第1页',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  '第2页',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ),
            Container(
              color: Colors.deepOrange,
              child: Center(
                child: Text(
                  '第3页',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

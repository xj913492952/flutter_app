import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/values/Colors.dart';

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
          physics: BouncingScrollPhysics(),
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

class PageItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageItemState();
  }
}

class PageItemState extends State<PageItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: window.physicalSize.width,
      height: window.physicalSize.height,
      color: Color(0xfff5f5f5),
      child: Stack(
        children: <Widget>[
          Container(
            width: window.physicalSize.width,
            height: window.physicalSize.height,
            alignment: Alignment.center,
            child: Image.asset(
              'images/2.0x/bg_first_open_5.webp',
              width: window.physicalSize.width,
              height: window.physicalSize.height,
              fit: BoxFit.fill,
            ),
          ),

          Container(
            width: window.physicalSize.width,
            alignment: Alignment.bottomCenter,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  color: ColorWhite(),
                  padding: EdgeInsets.all(5),
                  child: Text("",
                      style: TextStyle(fontSize: 14, color: TextColorPrimary())),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

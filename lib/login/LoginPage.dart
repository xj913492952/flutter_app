import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/values/Colors.dart';
import 'package:flutter_app/Routes.dart' as mRoutes;



class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WindowBgColor(),
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  color: ColorWhite(),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: '请输入手机号码',
                          hintStyle: TextStyle(
                              fontSize: 14, color: TextColorHint())),
                      style:
                          TextStyle(fontSize: 14, color: TextColorPrimary())),
                ),
                Container(
                  height: 50,
                  color: ColorWhite(),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: '请输入密码',
                          hintStyle: TextStyle(
                              fontSize: 14, color: TextColorHint())),
                      style:
                      TextStyle(fontSize: 14, color: TextColorPrimary())),
                ),
                Container(
                  width: 200,
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("登录"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    splashColor: Colors.lightBlueAccent,
                    onPressed: () {
                      Navigator.popAndPushNamed(context, mRoutes.homePage, arguments:'splash');
                    },
                  ),
                )
              ],
            ),

          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text("用户使用协议",
                style: TextStyle(fontSize: 14, color: TextColorPrimary())),
          )
        ],
      ),
    );
  }
}

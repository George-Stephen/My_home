import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_home/constants.dart';
import 'package:my_home/screens/welcome.dart';

import 'dart:async';

class Splashscreen extends StatefulWidget{
  @override
  SplashState createState() => SplashState();

}

class SplashState extends State<Splashscreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.push(context,
    MaterialPageRoute(builder: (context) => WelcomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/RealEstate.png",
                      height: 500,
                      width: 500,),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  
}
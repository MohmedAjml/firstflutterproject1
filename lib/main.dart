import 'dart:async';
import 'package:firstflutterproject1/stackbasic.dart';
import 'package:firstflutterproject1/staggerdgrid.dart';
import 'package:firstflutterproject1/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterproject1/login.dart';
import 'package:firstflutterproject1/login_with_validation.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.pink),
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Tabbarr()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/disp/15549a14589707.5628669c64769.png")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///fetching image from asset way 1
              Image.asset(
                "assets/images/food.png",
                height: 200,
                width: 200,
              ),
              ///fetching image from asset way 2
              //const Image(image: AssetImage("assets/images/food.png")),
              const Text("MYAPP",
                  style: TextStyle(fontSize: 40, color: Colors.orange)),
            ],
          ),
        ),
      ),
    );

  }
}
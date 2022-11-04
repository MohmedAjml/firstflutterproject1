import 'package:flutter/material.dart';

class Stackbasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("stackbasic"),
      ),
      body: Stack(
          children:[Container(width: 300, height: 300, color: Colors.blue,),
      Positioned(
        bottom: 10,
        right: 10,
        child: Container(
            width: 50,
            height: 30,
            color: Colors.yellowAccent),
      ),
      Positioned(
        top: 10,
        left: 10,
        child: Container(
            width: 50,
            height: 30,
            color: Colors.cyan),
      ),
    ],
    ),
    );
  }

}




import 'package:flutter/material.dart';
class Gridviewextender extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("Gridview Extender"),
     ),
     body: GridView.extent(maxCrossAxisExtent: 50,

     ),
   );
  }

}


import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: ListWithSeparated(),));
}
class ListWithseparated extends StatelessWidget{

  var datas =<String>['Data 1','Data 2','Data 3'];
  var colors =<int>[600,300,100];
  @override
  Widget build(BuildContext context) {
    return scaffold(
      appBar:AppBar(title: const Text("mylist"),),
    body:ListView.separated(
        itemBuilder:(context,index) {
          return card(
          color:Colors.redAccent[colors[index]],
          child:padding
          padding:const EdgeInsets.all(50,0),
          child:
     )
    }
    )
  }

  Widget scaffold({required AppBar appBar, required ListView body}) {}

}
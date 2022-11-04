import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Mybottomnbar()));
}
class Mybottomnbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("BottomBar"),
      ),
      body:  const Center(
        child:Card(
          color: Colors.orangeAccent,
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Text("Homepage"),
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.cyan,
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.black),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black),label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.black),label: "Account"),
          ]

    ),
    );
  }

}
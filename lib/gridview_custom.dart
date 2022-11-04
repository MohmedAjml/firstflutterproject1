import 'package:flutter/material.dart';

class GridviewCustom extends StatelessWidget {
  get images => images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Gridview"),
      ),
      body: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Image.asset(
              images[index],
              height: 20,
              width: 20,
            );
          },
          childCount: 8,
        ),
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}

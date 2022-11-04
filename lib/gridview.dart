import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyGrid")),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Image.network(images[index]);
          }
      ),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/widgets/category_item.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xFFFBF9F6),
        title: const Text('Meal App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount:categorys.length ,
        itemBuilder: (context, index) {
          return CategoryItem(
            id: categorys[index].id,
            name: categorys[index].name,
            image: categorys[index].image,
          );
        },
      ),
    );
  }
}

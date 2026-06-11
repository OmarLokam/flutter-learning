import 'package:flutter/material.dart';
import 'package:task/widgets/category_item.dart';
import 'package:task/model/category_model.dart';

class Mealscreen extends StatelessWidget {
  const Mealscreen({super.key});

  final List<CategoryModel> meals = const [
    CategoryModel(
      name: 'Pasta',
      image:
          'https://www.cookwithkushi.com/wp-content/uploads/2016/07/best_white_sauce_pasta_bechamel_sauce-500x500.jpg',
    ),
    CategoryModel(
      name: 'Pizza',
      image:
          'https://wp-cdn.typhur.com/wp-content/uploads/2025/01/homemade-pizza-in-air-fryer.jpg',
    ),
    CategoryModel(
      name: 'Cheese Burger',
      image:
          'https://www.sargento.com/assets/Uploads/Recipe/Image/BonanzaBurger__FocusFillWyIwLjAwIiwiMC4wMCIsODAwLDQ3OF0_CompressedW10.jpg',
    ),
    CategoryModel(
      name: 'Steak',
      image:
          'https://www.simplyrecipes.com/thmb/P9H1SrWMXvlywbZ9-69aO0mD0JU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/simply-recipes-easy-steak-au-poivre-lead-1-7ea7ee649fb64401be483e698fc8bbd5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Meal App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            name: meals[index].name,
            image: meals[index].image,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/model/meal.dart';
import 'package:task/widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  final String categoryId;
  const MealScreen({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    List<Meal> filteredMeals = [];

    for (var meal in meals) {
      if (meal.categoryNumber == categoryId) {
        filteredMeals.add(meal);
      }
    }

    Widget bodyWidget;

    if (filteredMeals.isEmpty) {
      bodyWidget = const Center(
        child: Text(
          'No meals found in this category!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    } else {
      bodyWidget = ListView.builder(
        itemCount: filteredMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
            title: filteredMeals[index].title,
            imageUrl: filteredMeals[index].imageUrl,
            salary: filteredMeals[index].salary,
            time: filteredMeals[index].time,
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal, title: const Text('Meals')),
      body: bodyWidget,
    );
  }
}

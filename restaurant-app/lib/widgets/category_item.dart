import 'package:flutter/material.dart';

import 'package:task/screens/meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  const CategoryItem({
    super.key,
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return MealScreen(categoryId: id, categoryName: name);
            },
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),

          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.deepOrangeAccent,
            width: double.infinity,
            padding: const EdgeInsets.all(6),
            child: Text(
              name,

              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

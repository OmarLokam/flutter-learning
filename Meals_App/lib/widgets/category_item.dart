import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String image;

  const CategoryItem({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
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
    );
  }
}

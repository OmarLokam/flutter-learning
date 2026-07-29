import 'package:flutter/material.dart';
import '../../../../core/models/food_item.dart';

class ProductImage extends StatelessWidget {
  final FoodItem foodItem;

  const ProductImage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: foodItem.id.toString(),
        child: Image.asset(
          foodItem.imagePath,
          height: 220,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
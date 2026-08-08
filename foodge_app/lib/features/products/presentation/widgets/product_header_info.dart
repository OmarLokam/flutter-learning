import 'package:flutter/material.dart';
import '../../../home/data/food_item.dart';

class ProductHeaderInfo extends StatelessWidget {
  final FoodItem foodItem;

  const ProductHeaderInfo({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${foodItem.name} ${foodItem.brand}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 18),
            const SizedBox(width: 4),
            Text(
              '${foodItem.rating}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              ' - ${foodItem.deliveryTime}',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
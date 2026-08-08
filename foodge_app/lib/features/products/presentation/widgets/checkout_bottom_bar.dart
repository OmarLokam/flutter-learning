import 'package:flutter/material.dart';

class CheckoutBottomBar extends StatelessWidget {
  final double totalPrice;
  final VoidCallback onOrderPressed;

  const CheckoutBottomBar({
    super.key,
    required this.totalPrice,
    required this.onOrderPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFE52030),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '\$${totalPrice.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2D2D2D),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onOrderPressed,
          child: const Text(
            'Order Now',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

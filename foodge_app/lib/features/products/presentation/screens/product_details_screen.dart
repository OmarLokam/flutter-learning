import 'package:flutter/material.dart';
import 'package:foodge_app/features/products/presentation/widgets/checkout_bottom_bar.dart';
import 'package:foodge_app/features/products/presentation/widgets/product_customization.dart';
import 'package:foodge_app/features/products/presentation/widgets/product_description.dart';
import 'package:foodge_app/features/products/presentation/widgets/product_header_info.dart';
import 'package:foodge_app/features/products/presentation/widgets/product_image.dart';
import '../../../home/data/food_item.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double spicinessValue = 0.5;
  int portionCount = 1;

  @override
  Widget build(BuildContext context) {
    
    final foodItem = ModalRoute.of(context)!.settings.arguments as FoodItem;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImage(foodItem: foodItem),
              const SizedBox(height: 24),

              ProductHeaderInfo(foodItem: foodItem),
              const SizedBox(height: 16),

              ProductDescription(description: foodItem.description),
              const SizedBox(height: 24),

              ProductCustomization(
                spicinessValue: spicinessValue,
                portionCount: portionCount,
                onSpicinessChanged: (val) => setState(() => spicinessValue = val),
                onPortionIncrement: () => setState(() => portionCount++),
                onPortionDecrement: () => setState(() {
                  if (portionCount > 1) portionCount--;
                }),
              ),
              const SizedBox(height: 40),

              CheckoutBottomBar(
                totalPrice: foodItem.price * portionCount,
                onOrderPressed: () {
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
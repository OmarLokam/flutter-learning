part of 'product_details_cubit.dart';

sealed class ProductDetailsState {
  final int quantity;
  final double totalPrice;

  ProductDetailsState({required this.quantity, required this.totalPrice});
}

final class ProductDetailsInitialState extends ProductDetailsState {
  ProductDetailsInitialState({required super.quantity, required super.totalPrice});
}

final class ProductDetailsUpdatedState extends ProductDetailsState {
  ProductDetailsUpdatedState({required super.quantity, required super.totalPrice});
}
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final double basePrice = 8.24;
  ProductDetailsCubit()
    : super(ProductDetailsInitialState(quantity: 1, totalPrice: 8.24));
  void incrementQuantity() {
    int newQuantity = state.quantity + 1;
    double newPrice = newQuantity * basePrice;
    emit(ProductDetailsUpdatedState(quantity: newQuantity, totalPrice: newPrice));
  }
  
}

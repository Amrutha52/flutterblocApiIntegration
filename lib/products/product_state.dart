part of 'product_bloc.dart';

class ProductState {
  List<Products>? plist;
  ProductState({this.plist});
}

class ProductInitial extends ProductState
{
  ProductInitial({required super.plist});
}

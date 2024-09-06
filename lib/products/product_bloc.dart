import 'package:bloc/bloc.dart';
import 'package:flutterblocapiintegration/service/apiservice.dart';
import 'package:meta/meta.dart';

import '../model/Products.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial(plist: [])) {
    on<LoadData>((event, emit)
    async {
      ApiService apiService = ApiService();
      var s = await apiService.fetchData();
      emit(ProductState(plist: s));
    });
  }
}

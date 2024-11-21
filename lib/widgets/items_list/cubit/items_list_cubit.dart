import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/widgets/items_list/api/get_items_list.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_state.dart';

class ItemsListCubit extends Cubit<ItemsListState> {
  ItemsListCubit() : super(ItemsListStaticState());

  int currentPage = 1;

  Future<void> getData() async {
    try {
      if (currentPage == 1) emit(ItemsListLoadingState());
      final shopItems = await getItemsList(currentPage);
      emit(ItemsListLoadedState(
          data: shopItems.data!,
          count: shopItems.count!,
          currentPage: currentPage));
    } catch (e) {
      emit(ItemsListErorState(error: e.toString()));
    }
  }

  void changePage() {
    currentPage = currentPage + 1;
    getData();
  }
}

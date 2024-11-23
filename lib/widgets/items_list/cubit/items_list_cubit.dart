import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/model/filters.dart';
import 'package:tattoo_flutter/entities/shop_item/model/item.dart';
import 'package:tattoo_flutter/widgets/items_list/api/get_items_list.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_state.dart';

class ItemsListCubit extends Cubit<ItemsListState> {
  ItemsListCubit() : super(ItemsListStaticState());

  List<Item> data = [];
  int count = 0;

  Future<void> getData(Filters filters) async {
    try {
      if (filters.page == 1) emit(ItemsListLoadingState());
      final shopItems = await getItemsList(filters);
      data = shopItems.data!;
      count = shopItems.count!;
      emit(ItemsListLoadedState(
        data: shopItems.data!,
        count: shopItems.count!,
      ));
    } catch (e) {
      emit(ItemsListErorState(error: e.toString()));
    }
  }
}

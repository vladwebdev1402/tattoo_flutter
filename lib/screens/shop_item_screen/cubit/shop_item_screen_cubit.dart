import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/shop_item/model/item.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/api/get_shop_tem.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/cubit/shop_item_screen_state.dart';

class ShopItemScreenCubit extends Cubit<ShopItemScreenState> {
  ShopItemScreenCubit() : super(ShopItemScreenStaticState());

  Item? data;

  Future<void> getData(String id) async {
    try {
      ShopItemScreenLoadingState();
      final item = await getShopItem(id);
      data = item;
      emit(ShopItemScreenLoadedState(
        data: item,
      ));
    } catch (e) {
      emit(ShopItemScreenErorState(error: e.toString()));
    }
  }
}

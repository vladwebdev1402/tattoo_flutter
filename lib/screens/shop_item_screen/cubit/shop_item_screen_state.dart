import 'package:tattoo_flutter/entities/shop_item/model/item.dart';

abstract class ShopItemScreenState {}

class ShopItemScreenLoadingState extends ShopItemScreenState {}

class ShopItemScreenStaticState extends ShopItemScreenState {}

class ShopItemScreenErorState extends ShopItemScreenState {
  String error;
  ShopItemScreenErorState({required this.error});
}

class ShopItemScreenLoadedState extends ShopItemScreenState {
  Item data;
  ShopItemScreenLoadedState({required this.data});
}

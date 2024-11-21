import 'package:tattoo_flutter/entities/shop_item/model/item.dart';

abstract class ItemsListState {}

class ItemsListLoadingState extends ItemsListState {}

class ItemsListStaticState extends ItemsListState {}

class ItemsListErorState extends ItemsListState {
  String error;
  ItemsListErorState({required this.error});
}

class ItemsListLoadedState extends ItemsListState {
  List<Item> data;
  int count;
  int currentPage = 1;
  ItemsListLoadedState(
      {required this.data, required this.count, required this.currentPage});
}

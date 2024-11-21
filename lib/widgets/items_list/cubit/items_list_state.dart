import 'package:tattoo_flutter/entities/shop_item/model/item.dart';

abstract class ItemsListState {}

class ItemsListFirstLoadingState extends ItemsListState {}

class ItemsListStaticState extends ItemsListState {}

class ItemsListErorState extends ItemsListState {
  String error;
  ItemsListErorState({required this.error});
}

abstract class ItemsListStateWithData extends ItemsListState {
  List<Item> get data;
  int get count;
  int get currentPage;
}

class ItemsListLoadedState extends ItemsListState {
  List<Item> data;
  int count;
  int currentPage;
  ItemsListLoadedState(
      {required this.data, required this.count, required this.currentPage});
}

class ItemsListFilterLoadingState extends ItemsListState {
  List<Item> data;
  int count;
  int currentPage;
  ItemsListFilterLoadingState(
      {required this.data, required this.count, required this.currentPage});
}

import 'package:tattoo_flutter/widgets/category_row/model/category.dart';

abstract class CategorysState {}

class CategorysLoadingState extends CategorysState {}

class CategorysStaticState extends CategorysState {}

class CategorysErorState extends CategorysState {
  String error;
  CategorysErorState({required this.error});
}

class CategorysLoadedState extends CategorysState {
  List<Category> data;
  CategorysLoadedState({required this.data});
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/entities/filters/model/filters.dart';

class FiltersCubit extends Cubit<FiltersState> {
  FiltersCubit() : super(FiltersUpdateState(filters: Filters()));

  Filters filters = Filters();

  void changeFilters(Filters filters) {
    emit(FiltersUpdateState(filters: filters));
  }

  void changeCategory(String category) {
    filters.category = category;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeSortField(String sortField, String sortOrder) {
    filters.sortField = sortField;
    filters.sortOrder = sortOrder;
    emit(FiltersUpdateState(filters: filters));
  }

  void changePrice(int startPrice, int endPrice) {
    filters.startPrice = startPrice;
    filters.endPrice = endPrice;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeNo(bool no) {
    filters.no = no;
    emit(FiltersUpdateState(filters: filters));
  }
}

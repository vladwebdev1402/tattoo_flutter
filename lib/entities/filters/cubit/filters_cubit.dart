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
    filters.hot = false;
    if (sortField == filters.sortField && sortOrder == filters.sortOrder) {
      filters.sortField = '';
      filters.sortOrder = '';
    } else {
      filters.sortField = sortField;
      filters.sortOrder = sortOrder;
    }

    emit(FiltersUpdateState(filters: filters));
  }

  void changeStartPrice(int startPrice) {
    filters.startPrice = startPrice;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeEndPrice(int endPrice) {
    filters.endPrice = endPrice;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeNo(bool no) {
    filters.no = no;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeHot(bool hot) {
    filters.hot = hot;
    filters.sortField = '';
    filters.sortOrder = '';
    emit(FiltersUpdateState(filters: filters));
  }
}

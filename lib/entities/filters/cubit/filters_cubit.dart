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
    filters.page = 1;

    emit(FiltersUpdateState(filters: filters));
  }

  void changeSortField(String sortField, String sortOrder) {
    filters.page = 1;
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
    filters.page = 1;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeEndPrice(int endPrice) {
    filters.endPrice = endPrice;
    filters.page = 1;
    emit(FiltersUpdateState(filters: filters));
  }

  void changeNo(bool no) {
    filters.no = no;
    filters.page = 1;
    emit(FiltersUpdateState(filters: filters));
  }

  void changePage() {
    filters.page++;
    emit(FiltersUpdateState(filters: filters));
  }
}

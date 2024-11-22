import 'package:tattoo_flutter/entities/filters/model/filters.dart';

abstract class FiltersState {}

class FiltersUpdateState extends FiltersState {
  Filters filters;
  FiltersUpdateState({required this.filters});
}

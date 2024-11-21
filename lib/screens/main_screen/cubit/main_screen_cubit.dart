import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/screens/main_screen/cubit/main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(MainScreenUpdateState(category: 'all'));

  void changeCategory(String category) {
    emit(MainScreenUpdateState(category: category));
  }
}

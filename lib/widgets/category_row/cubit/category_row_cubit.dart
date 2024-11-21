import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/widgets/category_row/api/get_categorys.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_state.dart';

class CategorysCubit extends Cubit<CategorysState> {
  CategorysCubit() : super(CategorysStaticState());

  Future<void> getData() async {
    try {
      emit(CategorysLoadingState());
      final categorys = await getCategorys();
      emit(CategorysLoadedState(data: categorys.data!));
    } catch (e) {
      emit(CategorysErorState(error: e.toString()));
    }
  }
}

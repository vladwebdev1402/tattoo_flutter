import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/widgets/category_row/api/get_categorys.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_state.dart';
import 'package:tattoo_flutter/widgets/category_row/model/category.dart';

class CategorysCubit extends Cubit<CategorysState> {
  CategorysCubit() : super(CategorysStaticState());

  Future<void> getData() async {
    try {
      emit(CategorysLoadingState());
      final categorys = await getCategorys();
      categorys.data!.insert(0, Category(sId: "all", name: "Все"));
      emit(CategorysLoadedState(data: categorys.data!));
    } catch (e) {
      emit(CategorysErorState(error: e.toString()));
    }
  }
}

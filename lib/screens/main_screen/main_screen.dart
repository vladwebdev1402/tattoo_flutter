import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/screens/main_screen/cubit/main_screen_cubit.dart';
import 'package:tattoo_flutter/screens/main_screen/cubit/main_screen_state.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(Object context) {
    return BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: (context, state) {
      if (state is MainScreenUpdateState) {
        return Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: CategoryRowProvider(
            activeCategory: state.category,
            onCategoryTap:
                BlocProvider.of<MainScreenCubit>(context).changeCategory,
          ),
        );
      }
      return const Text('');
    });
  }
}

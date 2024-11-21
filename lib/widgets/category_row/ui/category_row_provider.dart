import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_cubit.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row.dart';

class CategoryRowProvider extends StatelessWidget {
  final String activeCategory;
  final Function(String category) onCategoryTap;

  const CategoryRowProvider(
      {super.key, required this.activeCategory, required this.onCategoryTap});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategorysCubit(),
      child: CategoryRow(
        activeCategory: activeCategory,
        onCategoryTap: onCategoryTap,
      ),
    );
  }
}

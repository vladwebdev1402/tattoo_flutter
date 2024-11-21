import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_cubit.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row.dart';

class CategoryRowProvider extends StatelessWidget {
  const CategoryRowProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategorysCubit(),
      child: const CategoryRow(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_cubit.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row.dart';

class CategoryRowProvider extends StatelessWidget {
  const CategoryRowProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => CategorysCubit()),
      BlocProvider(create: (context) => FiltersCubit())
    ], child: const CategoryRow());
  }
}

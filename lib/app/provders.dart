import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_cubit.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FiltersCubit()),
        BlocProvider(create: (context) => ItemsListCubit()),
      ],
      child: child,
    );
  }
}

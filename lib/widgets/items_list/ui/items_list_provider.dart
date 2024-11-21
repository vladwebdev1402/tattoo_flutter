import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_cubit.dart';
import 'package:tattoo_flutter/widgets/items_list/ui/items_list.dart';

class ItemsListProvider extends StatelessWidget {
  const ItemsListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemsListCubit(),
      child: const ItemsList(),
    );
  }
}

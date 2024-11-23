import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/cubit/shop_item_screen_cubit.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/ui/shop_item_screen.dart';

class ShopItemScreenProvider extends StatelessWidget {
  final String id;

  const ShopItemScreenProvider({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ShopItemScreenCubit(),
        child: ShopItemScreen(
          id: id,
        ));
  }
}

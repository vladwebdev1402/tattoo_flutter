import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/screens/main_screen/cubit/main_screen_cubit.dart';
import 'package:tattoo_flutter/screens/main_screen/main_screen.dart';

class MainScreenProvider extends StatelessWidget {
  const MainScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MainScreenCubit(), child: const MainScreen());
  }
}

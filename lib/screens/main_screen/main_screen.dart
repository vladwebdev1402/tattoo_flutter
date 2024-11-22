import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row_provider.dart';
import 'package:tattoo_flutter/widgets/items_list/ui/items_list_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ProjectColors.dark),
        title: const Text("Flutter Demo"),
      ),
      backgroundColor: const Color(ProjectColors.light),
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: const Column(children: [
          CategoryRowProvider(),
          SizedBox(
            height: 24.0,
          ),
          SizedBox(
            width: 280.0,
            child: ItemsListProvider(),
          )
        ]),
      )),
    );
  }
}

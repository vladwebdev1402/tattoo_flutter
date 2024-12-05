import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row_provider.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/filters_modal.dart';
import 'package:tattoo_flutter/widgets/items_list/ui/items_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ProjectColors.black),
        leading: IconButton(
            onPressed: () => showGeneralDialog(
                  context: context,
                  pageBuilder: (context, _, __) => const FiltersModal(),
                ),
            icon: const Icon(
              Icons.menu,
              color: Color(ProjectColors.white),
            )),
        title: const Text(
          "Главная страница",
          style: TextStyle(fontSize: 20.0, color: Color(ProjectColors.white)),
        ),
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
            child: ItemsList(),
          )
        ]),
      )),
    );
  }
}

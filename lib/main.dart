import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/widgets/category_row/ui/category_row_provider.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: "Jost"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(ProjectColors.dark),
          title: const Text("Flutter Demo"),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: const CategoryRowProvider(),
        ),
      ),
    ));

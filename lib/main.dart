import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: "Jost"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(ProjectColors.dark),
          title: const Text("Flutter Demo"),
        ),
        body: const Center(
          child: Button(
            text: "В корзину",
          ),
        ),
      ),
    ));

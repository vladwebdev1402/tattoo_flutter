import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';

int add(int a, int b) {
  return a + b;
}

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: "Jost"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(ProjectColors.dark),
          title: const Text("Flutter Demo"),
        ),
        body: Center(
          child: Button(
            text: "В корзину",
            onTap: () {
              print(123);
            },
          ),
        ),
      ),
    ));

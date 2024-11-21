import 'package:flutter/material.dart';
import 'package:tattoo_flutter/screens/main_screen/main_screen_provider.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: "Jost"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(ProjectColors.dark),
          title: const Text("Flutter Demo"),
        ),
        body: const MainScreenProvider(),
      ),
    ));

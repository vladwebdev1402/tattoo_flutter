import 'package:flutter/material.dart';
import 'package:tattoo_flutter/app/provders.dart';
import 'package:tattoo_flutter/screens/main_screen/main_screen.dart';

void main() => runApp(
      Providers(
          child: MaterialApp(
              theme: ThemeData(fontFamily: "Jost"), home: const MainScreen())),
    );

import 'package:flutter/material.dart';
import 'package:tattoo_flutter/app/provders.dart';
import 'package:tattoo_flutter/app/router.dart';

void main() => runApp(
      Providers(
          child: MaterialApp(
              theme: ThemeData(fontFamily: "Jost"), home: const AppRouter())),
    );

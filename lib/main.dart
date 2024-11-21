import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/carousel/carousel.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Jost"),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ProjectColors.dark),
        title: const Text("Flutter Demo"),
      ),
      body: const SizedBox(
        width: 280.0,
        height: 228.0,
        child: Carousel(
          images: [
            'assets/images/example.png',
            'assets/images/example.png',
            'assets/images/example.png',
            'assets/images/example.png'
          ],
          withPagination: true,
        ),
      ),
    )));

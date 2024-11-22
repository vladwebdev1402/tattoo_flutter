import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class FilterTitle extends StatelessWidget {
  final String text;

  const FilterTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Color(ProjectColors.dark)));
  }
}

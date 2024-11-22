import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/ui/divider/triangle_divider.dart';

class FilterSeparator extends StatelessWidget {
  const FilterSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(
        height: 30.0,
      ),
      TriangleDivider(),
      SizedBox(
        height: 20.0,
      ),
    ]);
  }
}

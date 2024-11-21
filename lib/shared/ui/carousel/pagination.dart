import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class Pagination extends StatelessWidget {
  final int currentPage;
  final int countPage;
  final Function(int) changePage;

  const Pagination(
      {super.key,
      required this.currentPage,
      required this.countPage,
      required this.changePage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
          height: 16.0,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Center(
                    child: GestureDetector(
                      onTap: () => changePage(index),
                      child: Container(
                        width: 6.0,
                        height: 6.0,
                        color: index == currentPage
                            ? const Color(ProjectColors.darkOrange)
                            : const Color(ProjectColors.grayBg),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(width: 8.0),
              itemCount: countPage)),
    );
  }
}

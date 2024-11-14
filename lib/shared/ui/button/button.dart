import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final bool? isActive;
  final bool? fullWidth;
  final void Function()? onTap;
  const Button(
      {super.key,
      this.isActive,
      required this.text,
      required this.onTap,
      this.fullWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: fullWidth == true ? double.infinity : null,
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
        decoration: BoxDecoration(
          color: isActive == true
              ? const Color(ProjectColors.darkOrange)
              : const Color(ProjectColors.light),
          border: Border.all(
            color: const Color(ProjectColors.orange),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.zero),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Jost",
            color: isActive == true
                ? const Color(ProjectColors.white)
                : const Color(ProjectColors.orange),
          ),
        ),
      ),
    );
  }
}

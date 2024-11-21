import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isActive;
  final bool fullWidth;
  final bool isLoading;
  final void Function() onTap;
  const Button(
      {super.key,
      required this.text,
      required this.onTap,
      this.isActive = false,
      this.fullWidth = false,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => !isLoading ? onTap() : null,
      child: Container(
        width: fullWidth ? double.infinity : null,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        decoration: BoxDecoration(
          color: isActive
              ? const Color(ProjectColors.darkOrange)
              : const Color(ProjectColors.light),
          border: Border.all(
            color: const Color(ProjectColors.orange),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.zero),
        ),
        child: !isLoading
            ? Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Jost",
                  color: isActive
                      ? const Color(ProjectColors.white)
                      : const Color(ProjectColors.orange),
                ),
              )
            : const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 28.0,
                      height: 28.0,
                      child: CircularProgressIndicator(
                        color: Color(ProjectColors.orange),
                      ))
                ],
              ),
      ),
    );
  }
}

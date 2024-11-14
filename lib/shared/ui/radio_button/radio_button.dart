import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class RadioButton extends StatelessWidget {
  final String label;
  final void Function()? onChanged;
  final bool isActive;

  const RadioButton(
      {super.key,
      required this.label,
      required this.onChanged,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 2.0, color: const Color(ProjectColors.orange))),
            child: Visibility(
                visible: isActive,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(ProjectColors.orange)),
                )),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 17.0,
              color: Color(ProjectColors.dark),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class PriceField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;

  const PriceField(
      {this.controller,
      this.focusNode,
      this.initialValue,
      this.onSubmitted,
      this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(ProjectColors.dark), width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Color(ProjectColors.dark), width: 1.0),
        ),
      ),
      cursorColor: const Color(ProjectColors.dark),
      keyboardType: TextInputType.number,
      initialValue: initialValue,
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      style: const TextStyle(
          fontSize: 15.0,
          fontFamily: "Montserrat",
          color: Color(ProjectColors.dark)),
      validator: (value) {
        if (value!.isEmpty) return "Введите значение коэффициента";
        if (!RegExp(r'((^|, )([-]{0,1}[0-9]+[.]{0,1}[0-9]+|[-]{0,1}[0-9]+))+$')
            .hasMatch(value)) {
          return "Число введено неккоретно";
        }
        return null;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class SwitchButton extends StatelessWidget {
  final bool isActive;
  final void Function()? onChanged;

  const SwitchButton(
      {super.key, required this.isActive, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Stack(
        children: [
          Container(
            width: 35.0,
            height: 20.0,
            decoration: const BoxDecoration(color: Color(ProjectColors.orange)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
            top: 2.5,
            left: isActive == true ? 17.5 : 2.5,
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: const BoxDecoration(
                color: Color(ProjectColors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:tattoo_flutter/shared/lib/colors.dart';

// class SwitchButton extends StatefulWidget {
//   final bool isActive;
//   final void Function(bool value) onChanged;

//   const SwitchButton(
//       {super.key, required this.isActive, required this.onChanged});

//   @override
//   State<SwitchButton> createState() => _SwitchButtonState();
// }

// class _SwitchButtonState extends State<SwitchButton> {
//   bool _isActive = false;

//   @override
//   void initState() {
//     super.initState();
//     _isActive = widget.isActive;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isActive = !_isActive;
//           widget.onChanged(_isActive);
//         });
//       },
//       child: Stack(
//         children: [
//           Container(
//             width: 35.0,
//             height: 20.0,
//             decoration: const BoxDecoration(color: Color(ProjectColors.orange)),
//           ),
//           AnimatedPositioned(
//             duration: const Duration(milliseconds: 200),
//             curve: Curves.linear,
//             top: 2.5,
//             left: _isActive == true ? 17.5 : 2.5,
//             child: Container(
//               width: 15.0,
//               height: 15.0,
//               decoration: const BoxDecoration(
//                 color: Color(ProjectColors.white),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


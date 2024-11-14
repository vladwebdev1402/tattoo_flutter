import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

class TriangleDivider extends StatelessWidget {
  final double triangleSize;

  const TriangleDivider({
    super.key,
    this.triangleSize = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Левый треугольник, направленный вправо
        CustomPaint(
          size: Size(triangleSize, triangleSize),
          painter: EquilateralTrianglePainter(
              color: const Color(ProjectColors.grayLight), pointingRight: true),
        ),
        // Центральная линия
        Expanded(
          child: Container(
            height: 1.0,
            color: const Color(ProjectColors.grayLight),
          ),
        ),
        // Правый треугольник, направленный влево
        CustomPaint(
          size: Size(triangleSize, triangleSize),
          painter: EquilateralTrianglePainter(
              color: const Color(ProjectColors.grayLight),
              pointingRight: false),
        ),
      ],
    );
  }
}

class EquilateralTrianglePainter extends CustomPainter {
  final Color color;
  final bool pointingRight;

  EquilateralTrianglePainter(
      {required this.color, required this.pointingRight});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    Path path = Path();
    if (pointingRight) {
      // Равносторонний треугольник, направленный вправо

      path.moveTo(size.width, size.height / 2);
      path.lineTo(0, 0);
      path.lineTo(0, size.height);
    } else {
      // Равносторонний треугольник, направленный влево
      path.moveTo(0, size.height / 2);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

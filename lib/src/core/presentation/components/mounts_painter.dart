import 'package:afon_app/src/core/presentation/components/size_constants.dart';
import 'package:afon_app/src/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstMount extends StatelessWidget {
  final double? height;
  final Color? color;
  const FirstMount({Key? key, this.height, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: FirstMountPainter(color: color ?? AfonTheme.backgroundColor),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height ?? SizeMountScaffold.heightFirstMount,
      ),
    );
  }
}

class SecondMount extends StatelessWidget {
  final double? height;
  final Color? color;
  const SecondMount({Key? key, this.height, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SecondMountPainter(color: color ?? AfonTheme.lightGreen),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height ?? SizeMountScaffold.heightSecondMount,
      ),
    );
  }
}

class FirstMountPainter extends CustomPainter {
  Color color;
  FirstMountPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = color;
    path = Path();
    path.lineTo(size.width * 0.02, size.height * 0.02);
    path.cubicTo(size.width * 0.02, size.height * 0.02, 0, size.height * 0.04,
        0, size.height * 0.04);
    path.cubicTo(0, size.height * 0.04, 0, size.height, 0, size.height);
    path.cubicTo(
        0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width,
        size.height);
    path.cubicTo(size.width, size.height, size.width * 0.97, size.height * 0.95,
        size.width * 0.97, size.height * 0.95);
    path.cubicTo(size.width * 0.97, size.height * 0.95, size.width * 0.95,
        size.height * 0.91, size.width * 0.95, size.height * 0.91);
    path.cubicTo(size.width * 0.95, size.height * 0.91, size.width * 0.94,
        size.height * 0.88, size.width * 0.94, size.height * 0.88);
    path.cubicTo(size.width * 0.94, size.height * 0.88, size.width * 0.91,
        size.height * 0.83, size.width * 0.91, size.height * 0.83);
    path.cubicTo(size.width * 0.91, size.height * 0.83, size.width * 0.89,
        size.height * 0.77, size.width * 0.89, size.height * 0.77);
    path.cubicTo(size.width * 0.89, size.height * 0.77, size.width * 0.87,
        size.height * 0.73, size.width * 0.87, size.height * 0.73);
    path.cubicTo(size.width * 0.87, size.height * 0.73, size.width * 0.87,
        size.height * 0.73, size.width * 0.87, size.height * 0.73);
    path.cubicTo(size.width * 0.87, size.height * 0.73, size.width * 0.78,
        size.height * 0.61, size.width * 0.78, size.height * 0.61);
    path.cubicTo(size.width * 0.78, size.height * 0.61, size.width * 0.76,
        size.height * 0.55, size.width * 0.76, size.height * 0.55);
    path.cubicTo(size.width * 0.76, size.height * 0.55, size.width * 0.74,
        size.height * 0.55, size.width * 0.74, size.height * 0.55);
    path.cubicTo(size.width * 0.74, size.height * 0.55, size.width * 0.72,
        size.height / 2, size.width * 0.72, size.height / 2);
    path.cubicTo(size.width * 0.72, size.height / 2, size.width * 0.72,
        size.height * 0.48, size.width * 0.72, size.height * 0.48);
    path.cubicTo(size.width * 0.72, size.height * 0.48, size.width * 0.7,
        size.height * 0.47, size.width * 0.7, size.height * 0.47);
    path.cubicTo(size.width * 0.7, size.height * 0.47, size.width * 0.68,
        size.height * 0.42, size.width * 0.68, size.height * 0.42);
    path.cubicTo(size.width * 0.68, size.height * 0.42, size.width * 0.67,
        size.height * 0.41, size.width * 0.67, size.height * 0.41);
    path.cubicTo(size.width * 0.67, size.height * 0.41, size.width * 0.65,
        size.height * 0.39, size.width * 0.65, size.height * 0.39);
    path.cubicTo(size.width * 0.65, size.height * 0.39, size.width * 0.6,
        size.height * 0.28, size.width * 0.6, size.height * 0.28);
    path.cubicTo(size.width * 0.6, size.height * 0.28, size.width * 0.59,
        size.height * 0.28, size.width * 0.59, size.height * 0.28);
    path.cubicTo(size.width * 0.59, size.height * 0.28, size.width * 0.58,
        size.height * 0.27, size.width * 0.58, size.height * 0.27);
    path.cubicTo(size.width * 0.58, size.height * 0.27, size.width * 0.56,
        size.height * 0.23, size.width * 0.56, size.height * 0.23);
    path.cubicTo(size.width * 0.56, size.height * 0.23, size.width * 0.52,
        size.height * 0.18, size.width * 0.52, size.height * 0.18);
    path.cubicTo(size.width * 0.52, size.height * 0.18, size.width * 0.51,
        size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.48,
        size.height * 0.17, size.width * 0.48, size.height * 0.17);
    path.cubicTo(size.width * 0.48, size.height * 0.17, size.width * 0.46,
        size.height * 0.16, size.width * 0.46, size.height * 0.16);
    path.cubicTo(size.width * 0.46, size.height * 0.16, size.width * 0.45,
        size.height * 0.16, size.width * 0.45, size.height * 0.16);
    path.cubicTo(size.width * 0.45, size.height * 0.16, size.width * 0.4,
        size.height * 0.13, size.width * 0.4, size.height * 0.13);
    path.cubicTo(size.width * 0.4, size.height * 0.13, size.width * 0.36,
        size.height * 0.1, size.width * 0.36, size.height * 0.1);
    path.cubicTo(size.width * 0.36, size.height * 0.1, size.width / 3,
        size.height * 0.09, size.width / 3, size.height * 0.09);
    path.cubicTo(size.width / 3, size.height * 0.09, size.width * 0.31,
        size.height * 0.09, size.width * 0.31, size.height * 0.09);
    path.cubicTo(size.width * 0.31, size.height * 0.09, size.width * 0.28,
        size.height * 0.09, size.width * 0.28, size.height * 0.09);
    path.cubicTo(size.width * 0.28, size.height * 0.09, size.width * 0.28,
        size.height * 0.09, size.width * 0.28, size.height * 0.09);
    path.cubicTo(size.width * 0.28, size.height * 0.09, size.width / 4,
        size.height * 0.07, size.width / 4, size.height * 0.07);
    path.cubicTo(size.width / 4, size.height * 0.07, size.width * 0.22,
        size.height * 0.05, size.width * 0.22, size.height * 0.05);
    path.cubicTo(size.width * 0.22, size.height * 0.05, size.width / 5,
        size.height * 0.04, size.width / 5, size.height * 0.04);
    path.cubicTo(size.width / 5, size.height * 0.04, size.width * 0.18,
        size.height * 0.04, size.width * 0.18, size.height * 0.04);
    path.cubicTo(size.width * 0.18, size.height * 0.04, size.width * 0.16,
        size.height * 0.05, size.width * 0.16, size.height * 0.05);
    path.cubicTo(size.width * 0.16, size.height * 0.05, size.width * 0.14,
        size.height * 0.04, size.width * 0.14, size.height * 0.04);
    path.cubicTo(size.width * 0.14, size.height * 0.04, size.width * 0.11,
        size.height * 0.02, size.width * 0.11, size.height * 0.02);
    path.cubicTo(size.width * 0.11, size.height * 0.02, size.width * 0.09, 0,
        size.width * 0.09, 0);
    path.cubicTo(
        size.width * 0.09, 0, size.width * 0.07, 0, size.width * 0.07, 0);
    path.cubicTo(
        size.width * 0.07, 0, size.width * 0.06, 0, size.width * 0.06, 0);
    path.cubicTo(
        size.width * 0.06, 0, size.width * 0.05, 0, size.width * 0.05, 0);
    path.cubicTo(
        size.width * 0.05, 0, size.width * 0.04, 0, size.width * 0.04, 0);
    path.cubicTo(size.width * 0.04, 0, size.width * 0.02, size.height * 0.02,
        size.width * 0.02, size.height * 0.02);
    path.cubicTo(size.width * 0.02, size.height * 0.02, size.width * 0.02,
        size.height * 0.02, size.width * 0.02, size.height * 0.02);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class SecondMountPainter extends CustomPainter {
  Color color;
  SecondMountPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 2

    paint.color = this.color;
    path = Path();
    path.lineTo(size.width * 0.03, size.height * 0.04);
    path.cubicTo(size.width * 0.03, size.height * 0.04, 0, size.height * 0.08,
        0, size.height * 0.08);
    path.cubicTo(0, size.height * 0.08, 0, size.height, 0, size.height);
    path.cubicTo(
        0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.55,
        size.width, size.height * 0.55);
    path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.55,
        size.width, size.height * 0.55);
    path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.55,
        size.width, size.height * 0.55);
    path.cubicTo(size.width, size.height * 0.55, size.width * 0.97,
        size.height * 0.54, size.width * 0.97, size.height * 0.54);
    path.cubicTo(size.width * 0.97, size.height * 0.54, size.width * 0.96,
        size.height * 0.53, size.width * 0.96, size.height * 0.53);
    path.cubicTo(size.width * 0.96, size.height * 0.53, size.width * 0.96,
        size.height * 0.53, size.width * 0.96, size.height * 0.53);
    path.cubicTo(size.width * 0.96, size.height * 0.53, size.width * 0.94,
        size.height * 0.53, size.width * 0.94, size.height * 0.53);
    path.cubicTo(size.width * 0.94, size.height * 0.53, size.width * 0.94,
        size.height * 0.53, size.width * 0.94, size.height * 0.53);
    path.cubicTo(size.width * 0.94, size.height * 0.53, size.width * 0.93,
        size.height * 0.54, size.width * 0.93, size.height * 0.54);
    path.cubicTo(size.width * 0.92, size.height * 0.54, size.width * 0.92,
        size.height * 0.54, size.width * 0.92, size.height * 0.54);
    path.cubicTo(size.width * 0.92, size.height * 0.54, size.width * 0.91,
        size.height * 0.53, size.width * 0.91, size.height * 0.53);
    path.cubicTo(size.width * 0.91, size.height * 0.53, size.width * 0.91,
        size.height * 0.53, size.width * 0.91, size.height * 0.53);
    path.cubicTo(size.width * 0.91, size.height * 0.53, size.width * 0.89,
        size.height * 0.49, size.width * 0.89, size.height * 0.49);
    path.cubicTo(size.width * 0.89, size.height * 0.49, size.width * 0.89,
        size.height * 0.49, size.width * 0.89, size.height * 0.49);
    path.cubicTo(size.width * 0.89, size.height * 0.49, size.width * 0.87,
        size.height * 0.49, size.width * 0.87, size.height * 0.49);
    path.cubicTo(size.width * 0.87, size.height * 0.49, size.width * 0.87,
        size.height * 0.49, size.width * 0.87, size.height * 0.49);
    path.cubicTo(size.width * 0.87, size.height * 0.49, size.width * 0.86,
        size.height * 0.48, size.width * 0.86, size.height * 0.48);
    path.cubicTo(size.width * 0.86, size.height * 0.48, size.width * 0.85,
        size.height * 0.47, size.width * 0.85, size.height * 0.47);
    path.cubicTo(size.width * 0.85, size.height * 0.47, size.width * 0.85,
        size.height * 0.47, size.width * 0.85, size.height * 0.47);
    path.cubicTo(size.width * 0.85, size.height * 0.47, size.width * 0.8,
        size.height * 0.47, size.width * 0.8, size.height * 0.47);
    path.cubicTo(size.width * 0.8, size.height * 0.47, size.width * 0.8,
        size.height * 0.47, size.width * 0.8, size.height * 0.47);
    path.cubicTo(size.width * 0.8, size.height * 0.47, size.width * 0.77,
        size.height * 0.44, size.width * 0.77, size.height * 0.44);
    path.cubicTo(size.width * 0.77, size.height * 0.44, size.width * 0.71,
        size.height * 0.4, size.width * 0.71, size.height * 0.4);
    path.cubicTo(size.width * 0.71, size.height * 0.4, size.width * 0.67,
        size.height * 0.37, size.width * 0.67, size.height * 0.37);
    path.cubicTo(size.width * 0.67, size.height * 0.37, size.width * 0.67,
        size.height * 0.37, size.width * 0.67, size.height * 0.37);
    path.cubicTo(size.width * 0.67, size.height * 0.37, size.width * 0.65,
        size.height * 0.38, size.width * 0.65, size.height * 0.38);
    path.cubicTo(size.width * 0.65, size.height * 0.38, size.width * 0.65,
        size.height * 0.38, size.width * 0.65, size.height * 0.38);
    path.cubicTo(size.width * 0.65, size.height * 0.38, size.width * 0.64,
        size.height * 0.37, size.width * 0.64, size.height * 0.37);
    path.cubicTo(size.width * 0.64, size.height * 0.37, size.width * 0.64,
        size.height * 0.37, size.width * 0.64, size.height * 0.37);
    path.cubicTo(size.width * 0.64, size.height * 0.37, size.width * 0.62,
        size.height * 0.38, size.width * 0.62, size.height * 0.38);
    path.cubicTo(size.width * 0.62, size.height * 0.38, size.width * 0.62,
        size.height * 0.38, size.width * 0.62, size.height * 0.38);
    path.cubicTo(size.width * 0.62, size.height * 0.38, size.width * 0.61,
        size.height * 0.38, size.width * 0.61, size.height * 0.38);
    path.cubicTo(size.width * 0.61, size.height * 0.38, size.width * 0.61,
        size.height * 0.38, size.width * 0.61, size.height * 0.38);
    path.cubicTo(size.width * 0.61, size.height * 0.38, size.width * 0.56,
        size.height / 3, size.width * 0.56, size.height / 3);
    path.cubicTo(size.width * 0.56, size.height / 3, size.width * 0.53,
        size.height * 0.31, size.width * 0.53, size.height * 0.31);
    path.cubicTo(size.width * 0.53, size.height * 0.31, size.width * 0.53,
        size.height * 0.31, size.width * 0.53, size.height * 0.31);
    path.cubicTo(size.width * 0.53, size.height * 0.31, size.width * 0.51,
        size.height * 0.31, size.width * 0.51, size.height * 0.31);
    path.cubicTo(size.width * 0.51, size.height * 0.31, size.width * 0.51,
        size.height * 0.31, size.width * 0.51, size.height * 0.31);
    path.cubicTo(size.width * 0.51, size.height * 0.31, size.width * 0.48,
        size.height / 3, size.width * 0.48, size.height / 3);
    path.cubicTo(size.width * 0.48, size.height / 3, size.width * 0.48,
        size.height / 3, size.width * 0.48, size.height / 3);
    path.cubicTo(size.width * 0.48, size.height / 3, size.width * 0.48,
        size.height / 3, size.width * 0.48, size.height / 3);
    path.cubicTo(size.width * 0.47, size.height / 3, size.width * 0.47,
        size.height / 3, size.width * 0.47, size.height * 0.32);
    path.cubicTo(size.width * 0.47, size.height * 0.32, size.width * 0.46,
        size.height * 0.31, size.width * 0.46, size.height * 0.31);
    path.cubicTo(size.width * 0.46, size.height * 0.3, size.width * 0.46,
        size.height * 0.3, size.width * 0.46, size.height * 0.3);
    path.cubicTo(size.width * 0.46, size.height * 0.3, size.width * 0.45,
        size.height * 0.3, size.width * 0.45, size.height * 0.3);
    path.cubicTo(size.width * 0.45, size.height * 0.3, size.width * 0.45,
        size.height * 0.3, size.width * 0.45, size.height * 0.3);
    path.cubicTo(size.width * 0.45, size.height * 0.3, size.width * 0.42,
        size.height / 3, size.width * 0.42, size.height / 3);
    path.cubicTo(size.width * 0.42, size.height / 3, size.width * 0.39,
        size.height * 0.34, size.width * 0.39, size.height * 0.34);
    path.cubicTo(size.width * 0.39, size.height * 0.34, size.width * 0.39,
        size.height * 0.34, size.width * 0.39, size.height * 0.34);
    path.cubicTo(size.width * 0.39, size.height * 0.34, size.width * 0.38,
        size.height / 3, size.width * 0.38, size.height / 3);
    path.cubicTo(size.width * 0.38, size.height / 3, size.width * 0.35,
        size.height * 0.3, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.3, size.width * 0.35,
        size.height * 0.3, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.3, size.width * 0.3,
        size.height * 0.3, size.width * 0.3, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.3, size.width * 0.3,
        size.height * 0.3, size.width * 0.3, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.3, size.width * 0.28,
        size.height * 0.29, size.width * 0.28, size.height * 0.29);
    path.cubicTo(size.width * 0.28, size.height * 0.29, size.width * 0.28,
        size.height * 0.29, size.width * 0.28, size.height * 0.29);
    path.cubicTo(size.width * 0.28, size.height * 0.29, size.width * 0.24,
        size.height * 0.29, size.width * 0.24, size.height * 0.29);
    path.cubicTo(size.width * 0.24, size.height * 0.29, size.width * 0.24,
        size.height * 0.29, size.width * 0.24, size.height * 0.29);
    path.cubicTo(size.width * 0.24, size.height * 0.29, size.width * 0.23,
        size.height * 0.27, size.width * 0.23, size.height * 0.27);
    path.cubicTo(size.width * 0.23, size.height * 0.27, size.width * 0.23,
        size.height * 0.27, size.width * 0.23, size.height * 0.27);
    path.cubicTo(size.width * 0.23, size.height * 0.27, size.width / 5,
        size.height * 0.27, size.width / 5, size.height * 0.27);
    path.cubicTo(size.width / 5, size.height * 0.27, size.width / 5,
        size.height * 0.27, size.width / 5, size.height * 0.27);
    path.cubicTo(size.width / 5, size.height * 0.27, size.width * 0.17,
        size.height / 5, size.width * 0.17, size.height / 5);
    path.cubicTo(size.width * 0.17, size.height / 5, size.width * 0.17,
        size.height / 5, size.width * 0.17, size.height / 5);
    path.cubicTo(size.width * 0.17, size.height / 5, size.width * 0.17,
        size.height / 5, size.width * 0.17, size.height / 5);
    path.cubicTo(size.width * 0.17, size.height * 0.19, size.width * 0.17,
        size.height * 0.19, size.width * 0.17, size.height * 0.18);
    path.cubicTo(size.width * 0.17, size.height * 0.18, size.width * 0.17,
        size.height * 0.18, size.width * 0.17, size.height * 0.17);
    path.cubicTo(size.width * 0.17, size.height * 0.17, size.width * 0.14,
        size.height * 0.11, size.width * 0.14, size.height * 0.11);
    path.cubicTo(size.width * 0.14, size.height * 0.11, size.width * 0.14,
        size.height * 0.11, size.width * 0.14, size.height * 0.11);
    path.cubicTo(size.width * 0.14, size.height * 0.11, size.width * 0.13,
        size.height * 0.11, size.width * 0.13, size.height * 0.11);
    path.cubicTo(size.width * 0.13, size.height * 0.11, size.width * 0.13,
        size.height * 0.1, size.width * 0.13, size.height * 0.1);
    path.cubicTo(size.width * 0.13, size.height * 0.1, size.width * 0.13,
        size.height * 0.09, size.width * 0.13, size.height * 0.09);
    path.cubicTo(size.width * 0.12, size.height * 0.08, size.width * 0.12,
        size.height * 0.08, size.width * 0.12, size.height * 0.08);
    path.cubicTo(size.width * 0.12, size.height * 0.08, size.width * 0.11,
        size.height * 0.08, size.width * 0.11, size.height * 0.08);
    path.cubicTo(size.width * 0.11, size.height * 0.08, size.width * 0.11,
        size.height * 0.07, size.width * 0.11, size.height * 0.07);
    path.cubicTo(size.width * 0.11, size.height * 0.07, size.width * 0.1,
        size.height * 0.05, size.width * 0.1, size.height * 0.05);
    path.cubicTo(size.width * 0.1, size.height * 0.04, size.width * 0.1,
        size.height * 0.04, size.width * 0.1, size.height * 0.04);
    path.cubicTo(size.width * 0.1, size.height * 0.04, size.width * 0.08,
        size.height * 0.04, size.width * 0.08, size.height * 0.04);
    path.cubicTo(size.width * 0.08, size.height * 0.04, size.width * 0.08,
        size.height * 0.04, size.width * 0.08, size.height * 0.03);
    path.cubicTo(size.width * 0.08, size.height * 0.03, size.width * 0.07,
        size.height * 0.01, size.width * 0.07, size.height * 0.01);
    path.cubicTo(size.width * 0.07, 0, size.width * 0.07, 0, size.width * 0.06,
        size.height * 0.01);
    path.cubicTo(size.width * 0.06, size.height * 0.01, size.width * 0.05,
        size.height * 0.05, size.width * 0.05, size.height * 0.05);
    path.cubicTo(size.width * 0.05, size.height * 0.06, size.width * 0.04,
        size.height * 0.06, size.width * 0.04, size.height * 0.05);
    path.cubicTo(size.width * 0.04, size.height * 0.05, size.width * 0.03,
        size.height * 0.04, size.width * 0.03, size.height * 0.04);
    path.cubicTo(size.width * 0.03, size.height * 0.04, size.width * 0.03,
        size.height * 0.04, size.width * 0.03, size.height * 0.04);
    path.cubicTo(size.width * 0.03, size.height * 0.04, size.width * 0.03,
        size.height * 0.04, size.width * 0.03, size.height * 0.04);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

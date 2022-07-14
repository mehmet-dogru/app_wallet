import 'package:flutter/cupertino.dart';

class ViewClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8128205, size.height * 0.1034766);
    path_1.cubicTo(
      size.width * 0.8907077,
      size.height * 0.1034766,
      size.width * 0.9538462,
      size.height * 0.05714851,
      size.width * 0.9538462,
      0,
    );
    path_1.lineTo(size.width, 0);
    path_1.lineTo(size.width, size.height * 1.467487);
    path_1.lineTo(0, size.height * 1.467487);
    path_1.lineTo(0, 0);
    path_1.lineTo(size.width * 0.04615385, 0);
    path_1.cubicTo(
      size.width * 0.04615385,
      size.height * 0.05714851,
      size.width * 0.1092931,
      size.height * 0.1034766,
      size.width * 0.1871795,
      size.height * 0.1034766,
    );
    path_1.cubicTo(
      size.width * 0.2650667,
      size.height * 0.1034766,
      size.width * 0.3282051,
      size.height * 0.05714851,
      size.width * 0.3282051,
      0,
    );
    path_1.lineTo(size.width * 0.3589744, 0);
    path_1.cubicTo(
      size.width * 0.3589744,
      size.height * 0.05714851,
      size.width * 0.4221128,
      size.height * 0.1034766,
      size.width * 0.5000000,
      size.height * 0.1034766,
    );
    path_1.cubicTo(
        size.width * 0.5778872,
        size.height * 0.1034766,
        size.width * 0.6410256,
        size.height * 0.05714851,
        size.width * 0.6410256,
        0);
    path_1.lineTo(size.width * 0.6717949, 0);
    path_1.cubicTo(
      size.width * 0.6717949,
      size.height * 0.05714851,
      size.width * 0.7349333,
      size.height * 0.1034766,
      size.width * 0.8128205,
      size.height * 0.1034766,
    );
    path_1.close();

    return path_1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

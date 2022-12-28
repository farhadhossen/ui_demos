import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // // TODO: implement getClip
    // throw UnimplementedError();
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h - 30);
    path.quadraticBezierTo(w * 0.5, h + 30, w, h - 30);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // // TODO: implement shouldReclip
    // throw UnimplementedError();
    return false;
  }
}

import 'package:flutter/material.dart';

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - 50);
    path.lineTo(size.width - 50, size.height);
    path.lineTo(size.width, 100);
    path.lineTo(30, size.height * 0.33 - 50 * 0.3);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

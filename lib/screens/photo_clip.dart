import 'package:flutter/material.dart';

class PhotoClip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip'),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Center(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Image.asset(
            'assets/images/user_background.jpg',
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.width * 0.8 * 1.33,
          ),
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.33);

    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(0, size.height, 50, size.height);

    path.lineTo(size.width - 50, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 100);
    path.quadraticBezierTo(size.width, 50, size.width - 50 * 1.5, 50 * 1.5);
    path.lineTo(30, size.height * 0.33 - 50 * 0.3);
    path.quadraticBezierTo(0, size.height * .33, 0, size.height * .33 + 50);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

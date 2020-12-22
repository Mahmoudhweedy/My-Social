import 'package:flutter/material.dart';
import 'package:socialApp/screens/home_screen.dart';

class LoginBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            labelText: 'User Name',
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: .8),
                borderRadius: BorderRadius.circular(30.0)),
            hintText: 'User Name',
            prefixIcon: Icon(
              Icons.person,
              size: 30.0,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            labelText: 'Password',
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: .8),
                borderRadius: BorderRadius.circular(30.0)),
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.lock_outline,
              size: 30.0,
            ),
          ),
        ),
        SizedBox(height: 40.0),
        GestureDetector(
          onTap: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
              (route) => false),
          child: Container(
            height: 45.0,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 60.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

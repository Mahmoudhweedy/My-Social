import 'package:flutter/material.dart';
import 'package:socialApp/widgets/signup_bottom_sheet.dart';

import 'login_buttom_sheet.dart';

class BottomSheetWidget extends StatelessWidget {
  final bool isUser;

  BottomSheetWidget({this.isUser});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1F4F4D),
      child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: isUser ? LoginBottomSheet() : SignUpBottomSheet()),
    );
  }
}

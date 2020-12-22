import 'package:flutter/material.dart';
import 'package:socialApp/widgets/bottom_sheet.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/login_background.jpg',
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 150,
              child: Text(
                'GET IN TOUCH !',
                style: TextStyle(
                  letterSpacing: 10.0,
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              child: Row(
                children: [
                  FlatButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (builder) => SingleChildScrollView(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: BottomSheetWidget(
                                    isUser: true,
                                  ),
                                ),
                              ));
                    },
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    color: Colors.cyan[50],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (builder) => SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: BottomSheetWidget(
                                      isUser: false,
                                    ),
                                  ),
                                ));
                      },
                      child: Text('Register',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      color: Colors.cyan[50]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

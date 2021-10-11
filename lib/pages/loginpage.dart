import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_img.png"),
            Text(
              "Wellcome",
              style: TextStyle(color: Colors.red),
            )
          ],
        ));
  }
}

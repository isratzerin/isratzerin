import 'package:flutter/material.dart';
import 'package:flutter_catalog2/pages/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
              width: 400,
              height: 300,
              child: Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.fitHeight,
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Your User ID",
                    labelText: "User ID",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Your Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          const Text("Forgot Password?"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: const Text("login"),
            style: TextButton.styleFrom(minimumSize: const Size(120, 40)),
          ),
        ],
      ),
    );
  }
}

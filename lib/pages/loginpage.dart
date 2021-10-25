import 'package:flutter/material.dart';
import 'package:flutter_catalog2/pages/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.pink,
        elevation: 2.0,
        centerTitle: true,
        title: const Text("Israts app"),
      ),
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                    width: 400,
                    height: 300,
                    child: Image.asset(
                      "assets/images/login.png",
                      fit: BoxFit.fitHeight,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter Your User ID",
                            labelText: "User ID",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User name is Empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User name is Empty";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 30 : 8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(changeButton ? 30 : 8),
                    splashColor: Colors.red,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 100,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                    ),
                  ),
                ),

                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     },
                //     child: const Text("Login"),
                //     style: TextButton.styleFrom(
                //         minimumSize: const Size(100, 40),
                //         backgroundColor: Colors.blue)),
                const SizedBox(
                  height: 20,
                ),
                const Text("Forgot Password?"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

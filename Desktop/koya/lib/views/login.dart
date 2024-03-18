import 'package:flutter/material.dart';
import 'package:koya/component/forms/loginPageInput.dart';
import 'package:koya/component/forms/loginPageInputPassword.dart';
import 'package:koya/component/forms/loginPageSubmitBtn.dart';
import 'package:koya/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Image.asset("lib/assets/images/unijos.png"),
            ),
          ),
          // child: Image(
          //   image: AssetImage('lib/assets/unijos.png'),

          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 151, 151, 151)),
                ),
              ),
            ],
          ),
          const LoginPageInput(),
          const LoginPageInputPassword(),
          const LoginPageSubmitBtn(),
          const SizedBox(height: 40.0)
        ],
      )),
    );
  }
}

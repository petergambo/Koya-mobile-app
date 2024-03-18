import 'package:flutter/material.dart';
import 'package:koya/const.dart';

class LoginPageSubmitBtn extends StatelessWidget {
  const LoginPageSubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.all(8),
          child: TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppStyle.primaryColor)),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/dashboard');
            },
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:koya/const.dart';

class LoginPageInputPassword extends StatelessWidget {
  const LoginPageInputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(color: const Color.fromARGB(137, 0, 0, 0))
      ),
      child: TextFormField(
        style: const TextStyle(fontSize: 14),
        obscureText: true,
        decoration: const InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.key,
            color: AppStyle.primaryAccentColor,
          ),
          hintText: 'Password',
        ),
      ),
    );
  }
}

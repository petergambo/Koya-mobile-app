import 'package:flutter/material.dart';
import 'package:koya/const.dart';

class LoginPageInput extends StatelessWidget {
  const LoginPageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            ),
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            // border: Border.all(color: const Color.fromARGB(137, 0, 0, 0))
          ),
          child: TextFormField(
            style: const TextStyle(fontSize: 14),
            decoration: const InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.person),
                iconColor: AppStyle.primaryAccentColor,
                hintText: 'Matric Number'),
          ),
        ),
      ],
    );
  }
}

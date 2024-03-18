import 'package:flutter/material.dart';

class UserDetailsBar extends StatefulWidget {
  const UserDetailsBar({super.key});

  @override
  State<UserDetailsBar> createState() => _UserDetailsBarState();
}

class _UserDetailsBarState extends State<UserDetailsBar> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      // clipBehavior: Clip.hardEdge,
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcome,",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ),
                Text(
                  "Peter",
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            )),
        Flexible(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Image.asset(
                    "lib/assets/images/propic2.jpg",
                    width: 40,
                    // scale: 0.1,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:koya/const.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      child: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(31, 0, 77, 3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: const ListTile(
              title: Text(
                "Dashboard",
                style: TextStyle(
                  color: AppStyle.primaryColor,
                ),
              ),
              leading: Icon(
                Icons.home_outlined,
                color: AppStyle.primaryColor,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(0, 0, 77, 3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: const ListTile(
              title: Text(
                "Settings",
                style: TextStyle(
                  color: AppStyle.primaryColor,
                ),
              ),
              leading: Icon(Icons.settings),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(0, 0, 77, 3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: const ListTile(
              title: Text(
                "About",
                style: TextStyle(
                  color: AppStyle.primaryColor,
                ),
              ),
              leading: Icon(Icons.info_outline),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(0, 0, 77, 3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: const ListTile(
              title: Text(
                "Contact",
                style: TextStyle(
                  color: AppStyle.primaryColor,
                ),
              ),
              leading: Icon(Icons.contact_support_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

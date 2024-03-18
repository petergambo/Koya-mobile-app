import 'package:flutter/material.dart';
import 'package:koya/const.dart';

class CoursesCard extends StatelessWidget {
  const CoursesCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.isEnrolled,
    required this.rating,
  });

  final String imageUrl;
  final String title;
  final bool isEnrolled;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/single-course');
        },
        child: Container(
          // padding: const EdgeInsets.all(8),
          width: 170,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color.fromARGB(120, 0, 0, 0),
                ),
                // padding: const EdgeInsets.all(10),
                child: ClipRect(
                    child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black12,
                  ),
                  Icon(Icons.star, color: Colors.black12),
                ],
              ),
              isEnrolled
                  ? TextButton(
                      style: const ButtonStyle(
                          visualDensity: VisualDensity.compact,
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(236, 243, 243, 243))),
                      onPressed: () {},
                      child: const Text(
                        "Continue course",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppStyle.primaryColor),
                      ))
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.only(top: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              style: const ButtonStyle(
                                  visualDensity: VisualDensity.compact,
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppStyle.primaryAccentColor)),
                              onPressed: () {},
                              child: const Text(
                                "Details",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_outline,
                              color: Colors.black12,
                            ),
                          )
                        ],
                      ),
                    ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }
}

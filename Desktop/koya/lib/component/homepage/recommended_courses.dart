import 'package:flutter/material.dart';
import 'package:koya/component/homepage/coursescard.dart';
import 'package:koya/const.dart';

class RecommendedCourses extends StatefulWidget {
  const RecommendedCourses({super.key});

  @override
  State<RecommendedCourses> createState() => _RecommendedCoursesState();
}

class _RecommendedCoursesState extends State<RecommendedCourses> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "RECOMMENDED COURSES",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppStyle.lightTextColor,
                ),
              ),
            ),
          ],
        ),

        // Courses Card
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          // controller: controller,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(18.0),
                child: CoursesCard(
                  imageUrl:
                      'lib/assets/images/10698407_img20191208122424_jpeg40d420ed91e33ca35c1c9fff656e7a02.jpeg',
                  title: 'Python Beginners Course1',
                  isEnrolled: false,
                  rating: 5,
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(18.0),
                  child: CoursesCard(
                    imageUrl:
                        'lib/assets/images/10698405_img20191208122429_jpeg4bd4debef9cdd6b07353f8b20ba2e7f0.jpeg',
                    title: 'Python Beginners Course',
                    isEnrolled: true,
                    rating: 5,
                  )),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: CoursesCard(
                  imageUrl: 'lib/assets/images/unijos.png',
                  title: 'Python Beginners Course',
                  isEnrolled: false,
                  rating: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: CoursesCard(
                  imageUrl:
                      'lib/assets/images/10698405_img20191208122429_jpeg4bd4debef9cdd6b07353f8b20ba2e7f0.jpeg',
                  title: 'Python Beginners Course',
                  isEnrolled: false,
                  rating: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: CoursesCard(
                  imageUrl:
                      'lib/assets/images/10698405_img20191208122429_jpeg4bd4debef9cdd6b07353f8b20ba2e7f0.jpeg',
                  title: 'Python Beginners Course',
                  isEnrolled: false,
                  rating: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("data"),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("data"),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("data"),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("data"),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text("data"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

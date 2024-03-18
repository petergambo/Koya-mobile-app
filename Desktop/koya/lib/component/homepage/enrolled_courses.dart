import 'package:flutter/material.dart';
import 'package:koya/component/homepage/coursescard.dart';
import 'package:koya/const.dart';

class EnrolledCourses extends StatefulWidget {
  const EnrolledCourses({super.key});

  @override
  State<EnrolledCourses> createState() => _EnrolledCoursesState();
}

class _EnrolledCoursesState extends State<EnrolledCourses> {
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
                "MY COURSES (3)",
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
                      'lib/assets/images/10698406_img20191208122427_jpeg016df504c82c39844762551521d1294b.jpeg',
                  title: 'Basics of Revit Architecture 2024',
                  isEnrolled: true,
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
                  isEnrolled: true,
                  rating: 5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:koya/component/homepage/enrolled_courses.dart';
import 'package:koya/component/homepage/popularCourses.dart';
import 'package:koya/component/homepage/recommendedCourses.dart';
import 'package:koya/component/homepage/search_and_recommendation.dart';
import 'package:koya/component/homepage/userDetailsBar.dart';
import 'package:koya/const.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(6),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                borderRadius: BorderRadius.circular(8)),
            child: const UserDetailsBar(),
          ),

          // Recommended Courses
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchBarRecommendations(),
                  EnrolledCourses(),
                  RecommendedCourses(),
                  PopularCourses(),
                ],
              ),
            ),
          )
        ]);
  }
}

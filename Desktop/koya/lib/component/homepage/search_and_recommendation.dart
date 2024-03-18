import 'package:flutter/material.dart';

class SearchBarRecommendations extends StatefulWidget {
  const SearchBarRecommendations({super.key});

  @override
  State<SearchBarRecommendations> createState() =>
      _SearchBarRecommendationsState();
}

class _SearchBarRecommendationsState extends State<SearchBarRecommendations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Search Bar

        Column(
          // direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(14, 0, 0, 0),
              ),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                ),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    iconColor: Colors.black38,
                    hintText: 'Search courses'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Categories"),
            )
          ],
        ),

        // Recommendations Options
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          // controller: controller,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Animation"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Frontend Development"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("3D Modelling & Rendering"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Backend Development"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Graphics Design"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("DevOps"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Game Development"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Data Science"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(),
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(18),
                      end: Radius.circular(18),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Data Analysis"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

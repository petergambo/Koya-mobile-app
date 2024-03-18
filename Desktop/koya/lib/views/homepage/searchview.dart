import 'package:flutter/material.dart';
import 'package:koya/component/homepage/search_and_recommendation.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchBarRecommendations(),
      ],
    );
  }
}

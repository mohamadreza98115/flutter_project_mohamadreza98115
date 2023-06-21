import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_mohamadreza98115/services/fetchCategories.dart';

class Categories extends StatelessWidget {
  const Categories({
    required Key key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          // children: List.generate(categories.length, (index) => ),
          ),
    );
  }
}

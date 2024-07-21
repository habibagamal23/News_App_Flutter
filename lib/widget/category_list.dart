import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widget/category_card.dart';

import '../helpers/asset_paths.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {

    const List<CategoryModel> categories = [
      CategoryModel(
        image: AssetPaths.business,
        name: 'Business',
      ),
      CategoryModel(
        image: AssetPaths.entertainment,
        name: 'Entertainment',
      ),
      CategoryModel(
        image: AssetPaths.health,
        name: 'Health',
      ),
      CategoryModel(
        image: AssetPaths.science,
        name: 'Science',
      ),
    ];

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}

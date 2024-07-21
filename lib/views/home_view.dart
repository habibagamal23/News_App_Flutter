import 'package:flutter/material.dart';
import '../widget/category_list.dart';
import '../widget/news_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NewsApp",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoryList(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          NewsList(),
        ],
      ),
    );
  }
}

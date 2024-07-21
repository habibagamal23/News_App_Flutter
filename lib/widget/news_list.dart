import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'news_title_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ArticleModel> articles = [
      ArticleModel(image: "", title: "Business News", subTitle: "Details about business news..."),
      ArticleModel(image: "", title: "Entertainment News", subTitle: "Details about entertainment news..."),
      ArticleModel(image: "", title: "Health News", subTitle: "Details about health news...")
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTitleCard(
              art: articles[index],
            ),
          );
        },
        childCount: articles.length,
      ),
    );
  }
}

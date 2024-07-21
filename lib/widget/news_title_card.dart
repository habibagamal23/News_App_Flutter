import 'package:flutter/material.dart';
import '../model/article_model.dart';

class NewsTitleCard extends StatelessWidget {
  const NewsTitleCard({super.key, required this.art});

  final ArticleModel art;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            art.image ?? '',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: const Icon(
                  Icons.broken_image,
                  color: Colors.grey,
                  size: 50,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          art.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          art.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

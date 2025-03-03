import 'package:book_shop/views/widgets/cardItem.dart';
import 'package:flutter/material.dart';

class Customlistview extends StatelessWidget {
  const Customlistview({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> books = [
      {
        "image": "assets/images/7b4b465f-f181-4cbf-b739-a9ef452f46dc.jpg",
        "title": "The Jungle Book"
      },
      {
        "image": "assets/images/a6b04532-5fba-4a16-8678-cac051b40c87.jpg",
        "title": "King Kong"
      },
      {
        "image": "assets/images/c7b1ec95-804a-47e5-8514-674deffc7c7d.jpg",
        "title": "Another Book"
      },
    ];
    return SizedBox(
      height: 208,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: BookCard(
              image: books[index]["image"]!,
              title: books[index]["title"]!,
            ),
          );
        },
      ),
    );
  }
}

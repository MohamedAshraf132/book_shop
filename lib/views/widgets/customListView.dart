import 'package:flutter/material.dart';

// class CustomListView extends StatelessWidget {
//   const CustomListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 100,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/test_image.png'),
//           fit: BoxFit.fill,
//         ),
//       ),
//     );
//   }
// }
class BookCard extends StatelessWidget {
  final String image;
  final String title;

  const BookCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            image,
            height: 200,
            width: 130,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.play_arrow, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

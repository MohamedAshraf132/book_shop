import 'package:flutter/material.dart';

class Featuredlistviewitem extends StatelessWidget {
  const Featuredlistviewitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            "assets/images/7b4b465f-f181-4cbf-b739-a9ef452f46dc.jpg",
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

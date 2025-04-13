import 'package:flutter/material.dart';

class customApparDetails extends StatelessWidget {
  const customApparDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.close, size: 32),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, size: 32),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:book_shop/views/widgets/bestSellerList.dart';
import 'package:flutter/material.dart';

class BestsellerlistView extends StatelessWidget {
  const BestsellerlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Bestsellerlist();
      },
    ));
  }
}

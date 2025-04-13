import 'package:book_shop/features/home/presentation/views/widget/bestSellerList.dart';
import 'package:flutter/material.dart';

class Searchresult extends StatefulWidget {
  const Searchresult({super.key});

  @override
  State<Searchresult> createState() => _SearchresultState();
}

class _SearchresultState extends State<Searchresult> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Bestsellerlist();
        },
      ),
    );
  }
}

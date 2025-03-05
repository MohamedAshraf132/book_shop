import 'package:book_shop/features/styles.dart';
import 'package:book_shop/views/widgets/BestsellerlistView.dart';
import 'package:book_shop/views/widgets/customListView.dart';
import 'package:book_shop/views/widgets/homeAppar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppar(),
          SizedBox(
            height: 20,
          ),
          Customlistview(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              'Best Seller',
              style: styles.titleMedim,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BestsellerlistView(),
        ],
      ),
    );
  }
}

import 'package:book_shop/features/styles.dart';
import 'package:book_shop/features/home/presentation/views/widget/BestsellerlistView.dart';
import 'package:book_shop/features/home/presentation/views/widget/customListView.dart';
import 'package:book_shop/features/home/presentation/views/widget/homeAppar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: HomeAppar(),
                ),
                SizedBox(
                  height: 20,
                ),
                Customlistview(),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, bottom: 10),
                  child: Text(
                    'Best Seller',
                    style: styles.titleMedim,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: BestsellerlistView(),
          ),
        ),
      ],
    );
  }
}

import 'package:book_shop/features/styles.dart';
import 'package:book_shop/views/widgets/search%20widget/customSearchTextField.dart';
import 'package:book_shop/views/widgets/search%20widget/searchResult.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customsearchtextfield(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              'Best Seller',
              style: styles.titleMedim,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Searchresult(),
        ],
      ),
    );
  }
}

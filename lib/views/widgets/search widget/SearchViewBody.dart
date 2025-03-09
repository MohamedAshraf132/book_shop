import 'package:book_shop/views/widgets/search%20widget/customSearchTextField.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Customsearchtextfield(),
        ],
      ),
    );
  }
}

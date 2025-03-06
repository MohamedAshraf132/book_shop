import 'package:book_shop/views/widgets/customApparDetails.dart';
import 'package:flutter/material.dart';

class Bookdetailbody extends StatelessWidget {
  const Bookdetailbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: customApparDetails(),
        ),
      ],
    );
  }
}

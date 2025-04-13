import 'package:book_shop/views/widgets/CustomBookImage.dart';
import 'package:book_shop/views/widgets/bookButtomAction.dart';
import 'package:book_shop/views/widgets/customApparDetails.dart';
import 'package:book_shop/views/widgets/customListView.dart';
import 'package:flutter/material.dart';

class Bookdetailbody extends StatelessWidget {
  const Bookdetailbody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: customApparDetails(),
            ),
            const SizedBox(height: 10),
            CustomBookImage(),
            SizedBox(height: 15),
            Text(
              "Harry Potter and Goblet of Fire",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              "J.K. Rowling",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 22),
                Text(
                  " 4.8",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                Text(
                  " (2390)",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            customButtomAction(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "You can also liked",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Customlistview(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}

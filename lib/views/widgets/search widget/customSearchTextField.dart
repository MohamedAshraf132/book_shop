import 'package:flutter/material.dart';

class Customsearchtextfield extends StatelessWidget {
  const Customsearchtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onChanged: (value) {
        // نفذ البحث هنا (فلترة، API call، إلخ)
        print("Searching for: $value");
      },
    );
  }
}

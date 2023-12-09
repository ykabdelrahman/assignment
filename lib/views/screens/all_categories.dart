import 'package:assignment/views/widgets/custom_category_card.dart';
import 'package:flutter/material.dart';
import '../../model/item.dart';

class AllCategories extends StatelessWidget {
  AllCategories({super.key});
  final List<Item> items = [
    Item(name: 'Shoes', image: 'assets/categories/1.png'),
    Item(name: 'Slippers', image: 'assets/categories/2.png'),
    Item(name: 'Sandals', image: 'assets/categories/3.png'),
    Item(name: 'Boots', image: 'assets/categories/4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 8,
          bottom: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomCategoryCard(item: items[index]);
        },
      ),
    );
  }
}

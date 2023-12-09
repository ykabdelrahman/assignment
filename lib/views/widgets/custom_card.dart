import 'package:flutter/material.dart';
import '../../model/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            item.image,
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Text(
            item.name,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            r'$' '${item.price}',
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../model/item.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({
    super.key,
    required this.item,
  });
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Material(
        color: const Color(0xffF2E7E3),
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.purple,
          child: SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width * .8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Image.asset(
                    item.image,
                    height: 80,
                    width: 80,
                    errorBuilder: (context, error, stackTrace) =>
                        const Text(''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

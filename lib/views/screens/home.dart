import 'package:assignment/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import '../../model/item.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Item> items = [
    Item(name: 'Stiletto Heels', price: '500', image: 'assets/items/1.png'),
    Item(name: 'slippers', price: '600', image: 'assets/items/2.png'),
    Item(name: 'sneakers', price: '500', image: 'assets/items/3.png'),
    Item(name: 'classic shoes', price: '400', image: 'assets/items/4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 16),
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, size: 24),
            color: Colors.black,
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * .50,
        child: const Drawer(
          child: CustomDrawer(),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextFormField(
              iconn: Icons.search,
              hint: 'Search for a product...',
            ),
          ),
          const SizedBox(height: 50),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ItemCard(item: items[index]);
            },
          ),
        ],
      ),
    );
  }
}

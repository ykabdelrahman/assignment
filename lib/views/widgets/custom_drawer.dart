import 'package:assignment/views/screens/tab_bar_categories.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../screens/bottom_nav.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: const BoxDecoration(
            color: kPrimaryColor,
          ),
          accountName: const Text(
            'User',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: const Text(
            'User@gmail.com',
          ),
          currentAccountPicture: SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: AssetImage('assets/cutecat.png'),
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text('Home'),
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar(),
              ),
              (route) => false,
            );
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.category_outlined,
          ),
          title: const Text('Categories'),
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const TabBarCategories(),
              ),
              (route) => false,
            );
          },
        ),
      ],
    );
  }
}

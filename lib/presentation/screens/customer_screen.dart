import 'package:flutter/material.dart';

import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/presentation/pages/cart_page.dart';

import 'package:shop_app1/presentation/pages/category_page.dart';
import 'package:shop_app1/presentation/pages/home_page.dart';

import 'package:shop_app1/presentation/pages/profile_page.dart';
import 'package:shop_app1/presentation/pages/stores_page.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  int _tandalganIndex = 0;
  final List<Widget> _tabs = [
    const HomePage(),
    const CategoryPage(),
    const StoresPage(),
    const CartPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_tandalganIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        currentIndex: _tandalganIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          setState(
            () {
              _tandalganIndex = index;
            },
          );
        },
      ),
    );
  }
}

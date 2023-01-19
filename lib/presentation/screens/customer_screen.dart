import 'package:flutter/material.dart';

import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/presentation/pages/category_page.dart';
import 'package:shop_app1/presentation/pages/home_page.dart';

class Customer_Screen extends StatefulWidget {
  const Customer_Screen({Key? key}) : super(key: key);

  @override
  _Customer_ScreenState createState() => _Customer_ScreenState();
}

class _Customer_ScreenState extends State<Customer_Screen> {
  int _tandalganIndex = 0;
  final List<Widget> _tabs = [
    const Home_Page(),
    const Category_Page(),
    const Center(child: Text('Stores Screen')),
    const Center(child: Text('Cart Screen')),
    const Center(child: Text('Profile Screen')),
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
          setState(() {
            _tandalganIndex = index;
          });
        },
      ),
    );
  }
}

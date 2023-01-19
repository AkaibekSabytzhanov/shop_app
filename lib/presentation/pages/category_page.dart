import 'package:flutter/material.dart';
import 'package:shop_app1/categorys/accessories.dart';
import 'package:shop_app1/categorys/bags.dart';
import 'package:shop_app1/categorys/beauty.dart';
import 'package:shop_app1/categorys/electronics.dart';
import 'package:shop_app1/categorys/home_garden.dart';
import 'package:shop_app1/categorys/kids.dart';
import 'package:shop_app1/categorys/men.dart';
import 'package:shop_app1/categorys/shoes.dart';
import 'package:shop_app1/categorys/women.dart';

import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/data/Items_data.dart';
import 'package:shop_app1/presentation/widgets/serch_widget.dart';

class Category_Page extends StatefulWidget {
  const Category_Page({Key? key}) : super(key: key);

  @override
  _Category_PageState createState() => _Category_PageState();
}

class _Category_PageState extends State<Category_Page> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.white,
          title: const Search_Widget()),
      body: Stack(children: [
        Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
        Positioned(bottom: 0, right: 0, child: categoryView(size))
      ]),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.85,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              for (var element in items) {
                element.isTandalgan = false;
              }
              setState(() {
                items[index].isTandalgan = true;
              });
              _pageController.jumpToPage(index);
            },
            child: Container(
              height: 100,
              color: items[index].isTandalgan == true
                  ? AppColors.white
                  : Colors.grey.shade300,
              child: Center(
                child: Text(items[index].label),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      color: AppColors.white,
      height: size.height * 0.84,
      width: size.width * 0.8,
      child: PageView(
        // onPageChanged: (value) {
        //   for (var element in items) {
        //     element.isTandalgan = false;
        //   }
        //   setState(() {
        //     items[value].isTandalgan = true;
        //   });
        // },
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          Men(),
          Women(),
          Shoes(),
          Bags(),
          Electronics(),
          Accessories(),
          HomeGarden(),
          Kids(),
          Beauty()
        ],
      ),
    );
  }
}

class ItemsData {
  String label;
  bool isTandalgan;
  ItemsData({
    required this.label,
    this.isTandalgan = false,
  });
}

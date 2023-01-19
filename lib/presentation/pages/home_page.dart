import 'package:flutter/material.dart';

import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/presentation/widgets/serch_widget.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.white,
          title: const Search_Widget(),
          bottom: const TabBar(
              indicatorColor: AppColors.yellow,
              indicatorWeight: 8,
              isScrollable: true,
              tabs: [
                RepeatedTabWidget(label: 'Men'),
                RepeatedTabWidget(label: 'Women'),
                RepeatedTabWidget(label: 'Shoes'),
                RepeatedTabWidget(label: 'Bags'),
                RepeatedTabWidget(label: 'Electronics'),
                RepeatedTabWidget(label: 'Accessories'),
                RepeatedTabWidget(label: 'Home & gar'),
                RepeatedTabWidget(label: 'Kids'),
                RepeatedTabWidget(label: 'Beauty'),
              ]),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('women screen')),
            Center(child: Text('women screen')),
            Center(child: Text('shoes screen')),
            Center(child: Text('bags screen ')),
            Center(child: Text('electronics screen')),
            Center(child: Text('accessories screen')),
            Center(child: Text('home & garden screen')),
            Center(child: Text('kids screen')),
            Center(child: Text('beauty screen')),
          ],
        ),
      ),
    );
  }
}

class RepeatedTabWidget extends StatelessWidget {
  const RepeatedTabWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
      label,
      style: TextStyle(color: Colors.grey.shade600),
    ));
  }
}

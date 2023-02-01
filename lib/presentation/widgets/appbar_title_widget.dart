import 'package:flutter/material.dart';
import 'package:shop_app1/constants/style/text_style.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyles.black30Acme,
      ),
    );
  }
}

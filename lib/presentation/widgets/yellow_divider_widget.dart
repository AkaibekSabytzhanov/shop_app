import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class YellowDividerWidget extends StatelessWidget {
  const YellowDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Divider(
        color: AppColors.yellow,
      ),
    );
  }
}

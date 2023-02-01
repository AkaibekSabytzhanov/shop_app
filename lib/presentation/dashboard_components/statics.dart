import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/presentation/widgets/appbar_title_widget.dart';

class Statics extends StatelessWidget {
  const Statics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.white,
        title: const AppBarTitleWidget(
          title: 'Statics',
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class Account_Widget extends StatelessWidget {
  const Account_Widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
          width: 50,
          child: Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 40,
          width: 50,
          child: Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

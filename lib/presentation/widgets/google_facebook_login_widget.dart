import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class GoogleFacebookLogInWidget extends StatelessWidget {
  const GoogleFacebookLogInWidget({
    Key? key,
    required this.child,
    required this.label,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final String label;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
            width: 50.0,
            child: child,
          ),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.white,
      ),
      child: child,
    );
  }
}

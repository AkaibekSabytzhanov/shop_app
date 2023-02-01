import 'package:flutter/material.dart';

class SliverToBoxAdapterWidget extends StatelessWidget {
  const SliverToBoxAdapterWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.decoration,
    this.onTap,
  }) : super(key: key);
  final String text;
  final Color color;
  final Decoration decoration;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 50.0,
          width: 110.0,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

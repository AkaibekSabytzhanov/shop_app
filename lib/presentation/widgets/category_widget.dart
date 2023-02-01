import 'package:flutter/material.dart';
import 'package:shop_app1/components/detals.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    required this.detalsAppText,
    required this.categoryImage,
    required this.detalsImage,
    required this.labelText,
    Key? key,
  }) : super(key: key);
  final String detalsAppText;
  final String detalsImage;
  final String categoryImage;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detals(
              detalsAppText: detalsAppText,
              image: detalsImage,
            ),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(
              categoryImage,
            ),
          ),
          Text(labelText),
        ],
      ),
    );
  }
}

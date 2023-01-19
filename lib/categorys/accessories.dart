import 'package:flutter/material.dart';

import 'package:shop_app1/constants/style/style.dart';
import 'package:shop_app1/presentation/widgets/category_widget.dart';
import 'package:shop_app1/utillities/category_list.dart';

class Accessories extends StatelessWidget {
  Accessories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 180.0, top: 20.0),
                child: Text("Accessories", style: TextStyles.text20Black),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: List.generate(
                    accessories.length,
                    (index) {
                      return CategoryWidget(
                        DetalsAppText: accessories[index],
                        detalsImage:
                            'assets/images/accessories/accessories$index.jpg',
                        categoryImage:
                            'assets/images/accessories/accessories$index.jpg',
                        labelText: accessories[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

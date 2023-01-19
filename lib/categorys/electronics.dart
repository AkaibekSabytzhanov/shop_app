import 'package:flutter/material.dart';

import 'package:shop_app1/constants/style/style.dart';
import 'package:shop_app1/presentation/widgets/category_widget.dart';
import 'package:shop_app1/utillities/category_list.dart';

class Electronics extends StatelessWidget {
  Electronics({
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
                padding: EdgeInsets.only(right: 190.0, top: 20.0),
                child: Text("Electronics", style: TextStyles.text20Black),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: List.generate(
                    electronics.length,
                    (index) {
                      return CategoryWidget(
                        DetalsAppText: electronics[index],
                        detalsImage:
                            'assets/images/electronics/electronics$index.jpg',
                        categoryImage:
                            'assets/images/electronics/electronics$index.jpg',
                        labelText: electronics[index],
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

import 'package:flutter/material.dart';

import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/widgets/category_widget.dart';
import 'package:shop_app1/presentation/widgets/slider_widget.dart';
import 'package:shop_app1/utillities/category_list.dart';

class Shoes extends StatelessWidget {
  const Shoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 200.0, top: 20.0),
                child: Text("Shoes", style: TextStyles.text20Black),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: List.generate(
                    shoes.length,
                    (index) {
                      return CategoryWidget(
                        detalsAppText: shoes[index],
                        detalsImage: 'assets/images/shoes/shoes$index.jpg',
                        categoryImage: 'assets/images/shoes/shoes$index.jpg',
                        labelText: shoes[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: 0.0,
          right: 10.0,
          child: SliderWidget(
            sliderText: "SHOES",
          ),
        ),
      ],
    );
  }
}

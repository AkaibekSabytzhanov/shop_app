import 'package:flutter/material.dart';


import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/widgets/category_widget.dart';
import 'package:shop_app1/presentation/widgets/slider_widget.dart';
import 'package:shop_app1/utillities/category_list.dart';

class Men extends StatelessWidget {
  const Men({
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
                child: Text("Men", style: TextStyles.text20Black),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: List.generate(
                    men.length,
                    (index) {
                      return CategoryWidget(
                        detalsAppText: men[index],
                        detalsImage: 'assets/images/men/men$index.jpg',
                        categoryImage: 'assets/images/men/men$index.jpg',
                        labelText: men[index],
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
            sliderText: "MEN",
          ),
        ),
      ],
    );
  }
}

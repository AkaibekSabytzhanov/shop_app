import 'package:flutter/material.dart';

import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/widgets/category_widget.dart';
import 'package:shop_app1/presentation/widgets/slider_widget.dart';
import 'package:shop_app1/utillities/category_list.dart';

class HomeGarden extends StatelessWidget {
  const HomeGarden({
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
                padding: EdgeInsets.only(right: 170.0, top: 20.0),
                child: Text("HomeGarden ", style: TextStyles.text20Black),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: List.generate(
                    homeandgarden.length,
                    (index) {
                      return CategoryWidget(
                        detalsAppText: homeandgarden[index],
                        detalsImage: 'assets/images/homegarden/home$index.jpg',
                        categoryImage:
                            'assets/images/homegarden/home$index.jpg',
                        labelText: homeandgarden[index],
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
            sliderText: "HOME GARDEN",
          ),
        ),
      ],
    );
  }
}

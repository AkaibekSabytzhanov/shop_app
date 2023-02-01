import 'package:flutter/material.dart';

import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/widgets/category_widget.dart';
import 'package:shop_app1/presentation/widgets/slider_widget.dart';
import 'package:shop_app1/utillities/category_list.dart';

class Women extends StatelessWidget {
  const Women({
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
                child: Text("Women", style: TextStyles.text20Black),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: List.generate(
                    women.length,
                    (index) {
                      return CategoryWidget(
                        detalsAppText: women[index],
                        detalsImage: 'assets/images/women/women$index.jpg',
                        categoryImage: 'assets/images/women/women$index.jpg',
                        labelText: women[index],
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
            sliderText: "WOMEN",
          ),
        ),
      ],
    );
  }
}

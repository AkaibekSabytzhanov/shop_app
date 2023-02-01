import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.sliderText,
  }) : super(key: key);
  final String sliderText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: AppColors.brown.withOpacity(0.4),
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sliderText == 'BEAUTY' ? const Text('') : const Text("<<"),
                Text(sliderText),
                sliderText == 'MEN' ? const Text('') : const Text(">>"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

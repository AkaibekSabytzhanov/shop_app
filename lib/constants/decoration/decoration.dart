import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';

class AppDecoration {
  static Decoration decoration12LightBlue = BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
    color: AppColors.lightBlue,
  );
  static Decoration decoration12Yellow = BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
    color: AppColors.yellow,
  );
  static Decoration decoration50White = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(50.0),
  );
  static const Decoration decoration3030OnlyBlack54Left = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),
      bottomLeft: Radius.circular(30.0),
    ),
    color: Colors.black54,
  );
  static const Decoration decoration3030OnlyBlack54Right = BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(30.0),
      bottomRight: Radius.circular(30.0),
    ),
    color: Colors.black54,
  );
  static const Decoration welcomeDecoration = BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/inapp/bgimage.jpg'),
    ),
  );
  static const Decoration white38Left5050 = BoxDecoration(
    color: Colors.white38,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50.0),
      bottomLeft: Radius.circular(50.0),
    ),
  );
  static const Decoration white38Right5050 = BoxDecoration(
    color: Colors.white38,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(50.0),
      bottomRight: Radius.circular(50.0),
    ),
  );
  static Decoration yellow25 = BoxDecoration(
    color: Colors.yellow,
    borderRadius: BorderRadius.circular(25.0),
  );
  static const Decoration purple15top = BoxDecoration(
    color: AppColors.purple,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    ),
  );
  static const Decoration purple15bottom = BoxDecoration(
    color: AppColors.purple,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15),
    ),
  );
  static Decoration purple20Decration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: AppColors.purple,
  );
}

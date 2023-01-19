import 'package:flutter/material.dart';

class Detals extends StatelessWidget {
  const Detals({
    Key? key,
    required this.DetalsAppText,
    required this.image,
  }) : super(key: key);
  final String DetalsAppText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(DetalsAppText),
      ),
      body: Center(
        child: Image.asset(image),
      ),
    );
  }
}

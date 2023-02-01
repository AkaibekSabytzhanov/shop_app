import 'package:flutter/material.dart';

class Detals extends StatelessWidget {
  const Detals({
    Key? key,
    required this.detalsAppText,
    required this.image,
  }) : super(key: key);
  final String detalsAppText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(detalsAppText),
      ),
      body: Center(
        child: Image.asset(image),
      ),
    );
  }
}

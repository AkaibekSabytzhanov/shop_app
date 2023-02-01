import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/constants/decoration/decoration.dart';
import 'package:shop_app1/constants/style/text_style.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_forever,
              color: AppColors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0.0,
        title: const Text(
          'Cart',
          style: TextStyles.black28Acme,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Your Cart Is Empty!',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              child: Center(
                child: Text(
                  'Continue shopping',
                  style: TextStyles.white18,
                ),
              ),
              height: 40.0,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: AppDecoration.decoration12LightBlue,
            )
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text(
                'Total: \$',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '00.00',
                style: TextStyles.red20Bold,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Center(
                child: Text('CHECK OUT'),
              ),
              height: 30.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: AppDecoration.decoration12Yellow,
            ),
          ),
        ],
      ),
    );
  }
}

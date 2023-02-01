import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/constants/decoration/decoration.dart';
import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/auth/customer_register.dart';
import 'package:shop_app1/presentation/widgets/animated_logo_widget.dart';
import 'package:shop_app1/presentation/widgets/google_facebook_login_widget.dart';
import 'package:shop_app1/presentation/widgets/yellow_button_widget.dart';

const textColors = [
  AppColors.yellowAccent,
  AppColors.red,
  AppColors.blueAccent,
  AppColors.green,
  AppColors.purple,
  AppColors.teal,
];

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppDecoration.welcomeDecoration,
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    "Welcome",
                    textStyle: TextStyles.acme45,
                    colors: textColors,
                  ),
                  ColorizeAnimatedText(
                    "Duck Store",
                    textStyle: TextStyles.acme45,
                    colors: textColors,
                  ),
                ],
              ),
              const SizedBox(
                height: 120.0,
                width: 200.0,
                child: Image(
                  image: AssetImage('assets/images/inapp/logo.jpg'),
                ),
              ),
              DefaultTextStyle(
                style: TextStyles.lightBlueAccent45BoldAcme,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('Buy'),
                    RotateAnimatedText('Shop'),
                    RotateAnimatedText('Duck Store'),
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: AppDecoration.white38Left5050,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Suppliers only',
                            style: TextStyles.yellow26w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: AppDecoration.white38Left5050,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AnimatedLogoWidget(controller: _controller),
                            YellowButtonWidget(
                              label: 'Log In',
                              onTap: () {},
                              width: 0.25,
                            ),
                            YellowButtonWidget(
                              label: 'Sign Up',
                              onTap: () {},
                              width: 0.25,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Container(
                decoration: AppDecoration.white38Right5050,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    YellowButtonWidget(
                      label: 'Log In',
                      onTap: () {},
                      width: 0.25,
                    ),
                    YellowButtonWidget(
                      label: 'Sign Up',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CustomerRegister(),
                          ),
                        );
                      },
                      width: 0.25,
                    ),
                    AnimatedLogoWidget(controller: _controller),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              // bottomSheet google facebook duest
              Container(
                color: AppColors.white38,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GoogleFacebookLogInWidget(
                      label: 'Google',
                      child: const Image(
                        image: AssetImage('assets/images/inapp/google.jpg'),
                      ),
                      onPressed: () {},
                    ),
                    GoogleFacebookLogInWidget(
                      label: 'Facebook',
                      child: const Image(
                        image: AssetImage('assets/images/inapp/facebook.jpg'),
                      ),
                      onPressed: () {},
                    ),
                    GoogleFacebookLogInWidget(
                      label: 'Guest',
                      child: const Icon(
                        Icons.person,
                        size: 55.0,
                        color: AppColors.lightBlueAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

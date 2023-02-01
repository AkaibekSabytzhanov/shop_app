import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/constants/decoration/decoration.dart';
import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/widgets/text_form_field_widget.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  _CustomerRegisterState createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
  late String _name;
  late String _email;
  late String _password;
  bool passwordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  void showSnackBar() {
    _scaffoldKey.currentState!.showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 2),
        backgroundColor: AppColors.yellow,
        content: Text(
          'Please fill your fields',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Sing Up text

                        const Text(
                          'Sign Up ',
                          style: TextStyles.bold40,
                        ),
                        // home_work black icon
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.home_work,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      // CircleAvatar purpleAccont
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 40.0,
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: AppColors.purpleAccent,
                        ),
                      ),
                      Column(
                        children: [
                          // top camera icon
                          Container(
                            decoration: AppDecoration.purple15top,
                            child: IconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                color: AppColors.white,
                              ),
                              onPressed: () {
                                log('Pick image from camera');
                              },
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          // bottom camera icon
                          Container(
                            decoration: AppDecoration.purple15bottom,
                            child: IconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                color: AppColors.white,
                              ),
                              onPressed: () {
                                log('Pick image from gallery');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // TextFormFieldWidget
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                          onChanged: (value) {
                            _name = value;
                            log(_name);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your full name';
                            }

                            return null;
                          },
                          keyboardType: TextInputType.text,
                          hintText: 'Enter your full name',
                          labelText: 'Full Name',
                        ),
                        const SizedBox(height: 15.0),
                        TextFormFieldWidget(
                            onChanged: (value) {
                              _email = value;
                              log(_email);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter your email';
                              } else if (value.isValidEmail() == false) {
                                return 'invalid email';
                              } else if (value.isValidEmail() == true) {
                                return null;
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            hintText: 'Enter your email',
                            labelText: 'Email'),
                        const SizedBox(height: 15.0),
                        TextFormFieldWidget(
                          onChanged: (value) {
                            _password = value;
                            log(_password);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your password';
                            }

                            return null;
                          },
                          keyboardType: TextInputType.number,
                          obscureText: passwordVisible
                              ? passwordVisible = false
                              : passwordVisible = true,
                          widget: GestureDetector(
                            onTap: () {
                              setState(() {
                                passwordVisible = passwordVisible;
                              });
                            },
                            child: Icon(
                              passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          hintText: 'Enter your password',
                          labelText: 'Password',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  // already have account text
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.38,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'already have account?',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Log In',
                          style: TextStyles.purple15Bold,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 55.0),
                  // Sign Up button
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        log('valid');
                        log(_name);
                        log(_email);
                        log(_password);
                      } else {
                        log('not valid');
                        showSnackBar();
                      }
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyles.white20,
                        ),
                      ),
                      height: 40.0,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: AppDecoration.purple20Decration,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^([a-zA-Z0-9]+)([\-\_\.]*)([a-zA-Z0-9]*)([@])([a-zA-Z0-9]{2,})([\. ])([a-zA-Z]{2,3})$')
        .hasMatch(this);
  }
}

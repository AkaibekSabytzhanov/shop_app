import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/constants/decoration/decoration.dart';
import 'package:shop_app1/presentation/widgets/account_widget.dart';

import 'package:shop_app1/presentation/widgets/address_widget.dart';
import 'package:shop_app1/presentation/widgets/list_tile_widget.dart';
import 'package:shop_app1/presentation/widgets/sliver_to_box_adapter_widget.dart';
import 'package:shop_app1/presentation/widgets/yellow_divider_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Positioned(
            left: 5,
            child: Container(
              height: 192.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.yellow,
                    AppColors.brown,
                  ],
                ),
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                elevation: 0.0,
                backgroundColor: AppColors.white,
                expandedHeight: 120.0,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraint) {
                    return FlexibleSpaceBar(
                      title: AnimatedOpacity(
                        duration: const Duration(microseconds: 500),
                        opacity: constraint.biggest.height <= 120 ? 1 : 0,
                        child: const Text(
                          '             Account',
                          style: TextStyle(color: AppColors.black),
                        ),
                      ),
                      background: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.yellow,
                              AppColors.brown,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15.0,
                            left: 50.0,
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage:
                                    AssetImage('assets/images/inapp/guest.jpg'),
                              ),
                              const SizedBox(width: 12.0),
                              Text(
                                'Guest'.toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 65.0,
                          decoration: AppDecoration.decoration50White,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              //Cart
                              SliverToBoxAdapterWidget(
                                onTap: () {},
                                text: "Cart",
                                color: AppColors.yellow,
                                decoration:
                                    AppDecoration.decoration3030OnlyBlack54Left,
                              ),
                              //Orders
                              SliverToBoxAdapterWidget(
                                onTap: () {},
                                text: "Orders",
                                color: Colors.black54,
                                decoration: const BoxDecoration(
                                  color: Colors.yellow,
                                ),
                              ),
                              //Wishlist
                              SliverToBoxAdapterWidget(
                                onTap: () {},
                                text: "Wishlist",
                                color: AppColors.yellow,
                                decoration: AppDecoration
                                    .decoration3030OnlyBlack54Right,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.20,
                              child:
                                  Image.asset('assets/images/inapp/logo.jpg'),
                            ),
                            const Account_Widget(
                              text: '   Account Info.   ',
                            ),
                            AddressWidget(
                              child: Column(
                                children: const [
                                  // Email Address
                                  ListTileWidget(
                                    icon: Icons.email,
                                    title: "Email Address",
                                    subtitle: "akaibek@email.com",
                                  ),
                                  // YellowDivider
                                  YellowDividerWidget(),
                                  // Phone No
                                  ListTileWidget(
                                    icon: Icons.phone,
                                    title: "Phone No",
                                    subtitle: "+996779355794",
                                  ),
                                  // YellowDivider
                                  YellowDividerWidget(),
                                  // Address
                                  ListTileWidget(
                                    icon: Icons.location_pin,
                                    title: "Address",
                                    subtitle: "Osh, Chon-Alay",
                                  ),
                                ],
                              ),
                            ),
                            const Account_Widget(
                              text: '   Account Settings   ',
                            ),
                            AddressWidget(
                              child: Column(
                                children: const [
                                  // Edit Profile
                                  ListTileWidget(
                                    icon: Icons.edit,
                                    title: "Edit Profile",
                                  ),
                                  // YellowDivider
                                  YellowDividerWidget(),
                                  // Change Password
                                  ListTileWidget(
                                    icon: Icons.lock,
                                    title: "Change Password",
                                  ),
                                  // YellowDivider
                                  YellowDividerWidget(),
                                  // Log Out
                                  ListTileWidget(
                                    icon: Icons.logout,
                                    title: "Log Out ",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

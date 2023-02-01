import 'package:flutter/material.dart';
import 'package:shop_app1/constants/colors/app_colors.dart';
import 'package:shop_app1/constants/style/text_style.dart';
import 'package:shop_app1/presentation/pages/welcome.dart';
import 'package:shop_app1/utillities/dashboard_list.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Dashboard',
          style: TextStyles.black27Acme,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Welcome(),
                  ),
                );
              },
              child: const Icon(
                Icons.logout,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: GridView.count(
            mainAxisSpacing: 50.0,
            crossAxisSpacing: 50.0,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pages[index],
                    ),
                  );
                },
                child: Card(
                  elevation: 20.0,
                  shadowColor: AppColors.purpleAccent,
                  color: AppColors.blueGrey.withOpacity(0.7),
                  child: Column(
                    children: [
                      Icon(
                        icons[index],
                        size: 50.0,
                        color: AppColors.yellowAccent,
                      ),
                      Text(
                        label[index],
                        style: TextStyles.yellowAccent24w600Acme,
                      )
                    ],
                  ),
                ),
              );
            }),
          )),
    );
  }
}

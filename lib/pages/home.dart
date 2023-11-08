import 'package:flutter/material.dart';
import 'package:web_api_project/widgets/api_form.dart';
import 'package:web_api_project/widgets/app_colors.dart';
import 'package:web_api_project/widgets/app_text.dart';
import 'package:web_api_project/widgets/nav_button.dart';
import 'package:web_api_project/widgets/show_api_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.005,
              color: AppColors.primaryColor,
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(
                vertical: height * 0.02,
              ),
              height: height * 0.1,
              color: AppColors.whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.1,
                  ),
                  const AppText(
                    text: 'INTEGRATOR',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: width * 0.1,
                ),
                Container(
                  width: width * 0.8,
                  height: height,
                  color: AppColors.backgroundColor,
                  padding: const EdgeInsets.all(
                    10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      NavButton(
                        width: width,
                        height: height,
                      ),
                      Container(
                        width: double.maxFinite,
                        height: height * 0.8,
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        margin: const EdgeInsets.only(
                          top: 10.0,
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ApiForm(
                              width: width,
                              height: height,
                            ),
                            ShowApiDetails(
                              width: width,
                              height: height,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

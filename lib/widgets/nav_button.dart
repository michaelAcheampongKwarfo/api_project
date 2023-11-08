import 'package:flutter/material.dart';
import 'package:web_api_project/widgets/app_colors.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.45,
      height: height * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width * 0.25,
            height: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              color: AppColors.primaryColor,
            ),
          ),
          Container(
            width: width * 0.15,
            height: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

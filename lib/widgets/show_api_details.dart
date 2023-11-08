import 'package:flutter/material.dart';

class ShowApiDetails extends StatelessWidget {
  const ShowApiDetails({
    super.key,
    required this.width,
    required this.height,
    this.widget,
  });

  final double width;
  final double height;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.4,
      height: height * 0.8,
      color: Colors.yellow,
      child: widget,
    );
  }
}

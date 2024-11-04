import 'package:flutter/material.dart';

class DynamicContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  const DynamicContainer({
    Key? key,
    this.width = 28, // العرض الافتراضي
    this.height = 4, // الارتفاع الافتراضي
    this.color = Colors.green, // اللون الافتراضي
    this.borderRadius = 5, // الزاوية المدورة الافتراضية
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // العرض الديناميكي
      height: height, // الارتفاع الديناميكي
      decoration: BoxDecoration(
        color: color, // اللون الديناميكي
        borderRadius: BorderRadius.circular(borderRadius), // الزاوية المدورة الديناميكية
      ),
    );
  }
}

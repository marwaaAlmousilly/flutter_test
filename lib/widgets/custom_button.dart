import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String buttonText; // النص الديناميكي
  final Widget nextPage; // الصفحة التالية للتنقل إليها

  const CustomButton({
    Key? key,
    required this.buttonText, // النص الديناميكي
    required this.nextPage, // الصفحة التي سيتم الانتقال إليها
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(nextPage); // الانتقال إلى الصفحة عند الضغط
      },
      child: Container(
        width: 380, // العرض الثابت
        height: 60, // الارتفاع الثابت
        decoration: BoxDecoration(
          color: Colors.white, // اللون الثابت
          borderRadius: BorderRadius.circular(10), // الزوايا المدورة الثابتة
        ),
        child: Center(
          child: Text(
            buttonText, // النص الديناميكي
            style: const TextStyle(
              color: Colors.black, // لون النص الثابت
              fontSize: 16, // حجم النص الثابت
            ),
          ),
        ),
      ),
    );
  }
}

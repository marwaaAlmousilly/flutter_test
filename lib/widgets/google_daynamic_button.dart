import 'package:flutter/material.dart';

import '../core/const_data/app_colors.dart';
import '../core/const_data/app_image.dart';

class DynamicButton extends StatelessWidget {
  final String buttonText; // نص الزر
  final double width; // عرض الزر
  final double height; // ارتفاع الزر
  final VoidCallback onPressed; // الدالة التي يتم تنفيذها عند الضغط على الزر

  const DynamicButton({
    Key? key,
    required this.buttonText,
    this.width = 335, // قيمة افتراضية لعـرض الزر
    this.height = 50, // قيمة افتراضية لارتفاع الزر
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1, // تعيين الشفافية إلى 1 لجعل الزر مرئي
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height), // تعيين العرض والارتفاع
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14), // الزاوية العليا اليسرى
              bottomLeft: Radius.circular(14), // الزاوية السفلى اليسرى
              bottomRight: Radius.circular(14), // الزاوية السفلى اليمنى
              topRight: Radius.circular(14), // الزاوية العليا اليمنى (غير مدورة)
            ),
          ),
          backgroundColor: Mycolor.textfaild.withOpacity(0.2),// لون الزر
          shadowColor: Colors.transparent, // لون ظل الزر (شفاف)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImage.google, // تأكد أن هذا هو AssetImage وليس String
              height: 24, // تعيين ارتفاع الأيقونة
              width: 24, // تعيين عرض الأيقونة
            ),
            SizedBox(width: 8), // مساحة بين الأيقونة والنص
            Text(
              buttonText, // نص الزر الديناميكي
              style: TextStyle(
                color: Mycolor.black2, // لون النص
                fontSize: 16, // حجم الخط
              ),
            ),
          ],
        ),
      ),
    );
  }
}

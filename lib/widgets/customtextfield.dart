import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/auth/auth_controller.dart';
import '../core/const_data/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color? hintTextColor; // لون ديناميكي للـ hintText
  final bool isNameField; // تحديد نوع الحقل: true لـ name و false لـ email

  CustomTextField({
    required this.hintText,
    this.hintTextColor,
    this.isNameField = false, // الحقل الافتراضي يكون email
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) {
        return TextField(
          controller: isNameField ? controller.nameController : controller.emailController, // استخدام الكونترولر المناسب
          keyboardType: isNameField ? TextInputType.name : TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(14, 16, 57, 16),
            hintText: hintText,
            hintStyle: TextStyle(
              color: hintTextColor ?? Mycolor.ontextfaild.withOpacity(0.5), // استخدام اللون الديناميكي أو الافتراضي
            ),
            filled: true,
            fillColor: Mycolor.textfaild.withOpacity(0.9),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Mycolor.textfaild),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        );
      },
    );
  }
}

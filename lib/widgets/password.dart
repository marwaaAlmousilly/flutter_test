import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/auth/auth_controller.dart';
import '../core/const_data/app_colors.dart';



class CustomTextFieldPassword extends StatefulWidget {
  final String hintText;

  CustomTextFieldPassword({
    required this.hintText,
  });

  @override
  _CustomTextFieldPasswordState createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool _isObscure = true; // حالة لإخفاء أو إظهار النص

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
    builder: (controller) {
     return TextFormField(
        controller: controller.passwordController,
        obscureText: _isObscure, // استخدام الحالة لإخفاء النص
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(14, 16, 57, 16),
          hintText: widget.hintText,
          // النص الديناميكي
          hintStyle: TextStyle(
            color: Mycolor.ontextfaild.withOpacity(0.5),
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
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility_off_outlined : Icons
                  .visibility_outlined,
              color: Mycolor.ontextfaild.withOpacity(0.7),
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure; // تغيير الحالة عند الضغط
              });
            },
          ),
        ),
       validator: (value) {
         if (value == null || value.isEmpty) {
           return 'Please enter your password';
         } else if(value.length<6){
           return 'Password must be at least 6 characters long';
         }


         return null;
       },
      );
    },
    );
  }
}

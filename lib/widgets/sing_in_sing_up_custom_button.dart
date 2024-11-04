import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/auth/auth_controller.dart';
import '../../view/home/home_home/view/view.dart';

class CustomButton2 extends StatelessWidget {
  final String buttonText;
  final double width;
  final double height;
  final bool? isSignUp;
  CustomButton2({
    required this.buttonText,
    required this.width,
    required this.height,
    this.isSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) {
        return GestureDetector(
          onTap: () async {
            if (controller.emailController.text.isEmpty) {
              Get.snackbar('Error', 'Please enter your email');
            } else if (controller.passwordController.text.isEmpty) {
              Get.snackbar('Error', 'Please enter your password');
            } else if (controller.passwordController.text.length < 6) {
              Get.snackbar(
                  'Error', 'Password must be at least 6 characters long');
            } else {
              if (isSignUp ?? false) {
                controller.signUp();
              } else {
                controller.signIn();
              }
            }
          },
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: controller.isLoading.value
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  : Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:cart_project/core/service/link.dart';
import 'package:cart_project/core/service/my_sevice.dart';
import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  MyService service = Get.find<MyService>();

  // تفعيل حالة التحميل
  void setLoading(bool value) {
    isLoading.value = value;
    update();
  }

  // دالة تسجيل الدخول
  Future<void> signIn() async {
    setLoading(true);
    final url = Uri.parse(AppLink.login); // استبدل بالرابط الصحيح
    print(url);
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': emailController.text,
        'password': passwordController.text,
        'fcm_token': 'fcm_token',
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('تم تسجيل الدخول بنجاح: ${data['data']['access_token']}');
      Get.snackbar("Success", "Logged in successfully",
          snackPosition: SnackPosition.BOTTOM);
      service.saveToken(data['data']['access_token']);
      Get.to(
        ExploreView(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
      // تابع الإجراءات اللازمة بعد نجاح تسجيل الدخول
    } else {
      print(response.body);
      print('فشل تسجيل الدخول');
      Get.snackbar("Error", "Login failed. Please check your credentials.",
          snackPosition: SnackPosition.BOTTOM);
    }
    setLoading(false);
  }

  // دالة التسجيل
  Future<void> signUp() async {
    setLoading(true);
    final url =
        Uri.parse('https://example.com/api/register'); // استبدل بالرابط الصحيح
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'name': nameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'fcm_token': 'fcm_token',
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('تم التسجيل بنجاح: ${data['data']['access_token']}');
      Get.snackbar("Success", "Account created successfully",
          snackPosition: SnackPosition.BOTTOM);
      // تابع الإجراءات اللازمة بعد نجاح التسجيل
    } else {
      print('فشل التسجيل');
      Get.snackbar("Error", "Registration failed. Please try again.",
          snackPosition: SnackPosition.BOTTOM);
    }
    setLoading(false);
  }
}

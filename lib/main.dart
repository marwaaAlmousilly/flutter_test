import 'package:cart_project/view/onboard_1/screen/onboard_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/service/my_sevice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices(); // تأكد من تهيئة الخدمات الخاصة بك
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Homework List',
      debugShowCheckedModeBanner: false,
      home: Onboard1(), // تعيين الشاشة الرئيسية
    );
  }
}
// test
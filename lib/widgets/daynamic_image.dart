import 'package:flutter/material.dart';

class DynamicImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;

  DynamicImageWidget({
    required this.width,
    required this.height,
    required this.imagePath,
  });

  Future<void> _loadImage(BuildContext context) async {
    // تحميل الصورة مع تأخير مصطنع لإظهار مؤشر التحميل
    await Future.delayed(Duration(seconds: 2)); // تأخير مصطنع لمدة ثانيتين
    await precacheImage(AssetImage(imagePath), context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadImage(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // عرض مؤشر التحميل أثناء تحميل الصورة
          return Container(
            width: width,
            height: height,
            child: Center(child: CircularProgressIndicator()),
          );
        } else {
          // عرض الصورة بعد تحميلها
          return Container(
            width: width,
            height: height,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          );
        }
      },
    );
  }
}

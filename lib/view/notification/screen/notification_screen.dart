import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:flutter/material.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/icon_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استدعاء init لتحديث أبعاد الشاشة
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Mycolor.textfaild,
      body: Stack(
        children: [
          // زر الرجوع
          Positioned(
            top: SizeConfig.heightPercentage(8),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(12),
              height: SizeConfig.heightPercentage(6),
              padding: EdgeInsets.only(top: 3,left: 0.1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: IconBackButton(nextPage: ExploreView()),
            ),
          ),
          // العنوان
          Positioned(
            top: SizeConfig.heightPercentage(10),
            left: SizeConfig.widthPercentage(30),
            right: SizeConfig.widthPercentage(30),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(5),
                  fontWeight: FontWeight.w600,
                  height: 1,
                  color: Mycolor.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // أيقونة جانبية
          Positioned(
            top: SizeConfig.heightPercentage(8),
            right: SizeConfig.widthPercentage(4),
            child: Container(
              width: SizeConfig.widthPercentage(12),
              height: SizeConfig.heightPercentage(8),
              child: Image.asset(AppImage.icond),
            ),
          ),
          // قسم "Recent"
          Positioned(
            top: SizeConfig.heightPercentage(16),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              child: Text(
                'Recent',
                style: TextStyle(
                  fontSize: SizeConfig.widthPercentage(5),
                  fontWeight: FontWeight.w600,
                  color: Mycolor.black2,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
          ),
          // صندوق المحتوى الأول
          Positioned(
            top: SizeConfig.heightPercentage(21),
            left: SizeConfig.widthPercentage(1),
            right: SizeConfig.widthPercentage(1),
            child: Container(
              width: SizeConfig.widthPercentage(100),
              height: SizeConfig.heightPercentage(12),
              child: Image.asset(AppImage.white),
            ),
          ),
          // صورة داخل الصندوق الأول
          Positioned(
            top: SizeConfig.heightPercentage(22),
            left: SizeConfig.widthPercentage(12),
            child: Container(
              width: SizeConfig.widthPercentage(22),
              height: SizeConfig.heightPercentage(10),
              child: Image.asset(AppImage.pic4),
            ),
          ),
          // نص داخل الصندوق الأول
          Positioned(
            top: SizeConfig.heightPercentage(23),
            left: SizeConfig.widthPercentage(36),
            child: Container(
              width: SizeConfig.widthPercentage(40),
              child: Image.asset(AppImage.writing),
            ),
          ),
          // نص زمني للصندوق الأول
          Positioned(
            top: SizeConfig.heightPercentage(22),
            left: SizeConfig.widthPercentage(71),
            child: Container(
              child: Text(
                '7 min ago',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(3.5),
                  fontWeight: FontWeight.w500,
                  height: 1,
                  color: Mycolor.textColor2,
                ),
              ),
            ),
          ),
          // خط الفاصل
          Positioned(
            top: SizeConfig.heightPercentage(35),
            left: SizeConfig.widthPercentage(9),
            child: Container(
              width: SizeConfig.widthPercentage(80),
              height: SizeConfig.heightPercentage(10),
              child: Image.asset(AppImage.picline),
            ),
          ),
          // قسم "Yesterday"
          Positioned(
            top: SizeConfig.heightPercentage(50),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              child: Text(
                'Yesterday',
                style: TextStyle(
                  fontSize: SizeConfig.widthPercentage(5),
                  fontWeight: FontWeight.w600,
                  color: Mycolor.black2,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
          ),
          // صندوق المحتوى الثاني
          Positioned(
            top: SizeConfig.heightPercentage(55),
            left: SizeConfig.widthPercentage(9),
            child: Container(
              width: SizeConfig.widthPercentage(80),
              height: SizeConfig.heightPercentage(10),
              child: Image.asset(AppImage.picline),
            ),
          ),
          // صندوق المحتوى الثالث
          Positioned(
            top: SizeConfig.heightPercentage(68),
            left: SizeConfig.widthPercentage(10),
            child: Container(
              width: SizeConfig.widthPercentage(80),
              height: SizeConfig.heightPercentage(10),
              child: Image.asset(AppImage.picline2),
            ),
          ),
          // صورة داخل الصندوق الثالث
          Positioned(
            top: SizeConfig.heightPercentage(68),
            left: SizeConfig.widthPercentage(13),
            child: Container(
              width: SizeConfig.widthPercentage(18),
              height: SizeConfig.heightPercentage(9),
              child: Image.asset(AppImage.pic3),
            ),
          ),
        ],
      ),
    );
  }
}

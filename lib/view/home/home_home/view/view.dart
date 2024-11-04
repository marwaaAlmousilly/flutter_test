import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/app_image.dart';
import '../../../../media_query_service.dart';
import '../../../favourite_page/screen/favourite_screen.dart';
import '../../../my_cart/screen/my_cart_screen.dart';
import '../../../notification/screen/notification_screen.dart';
import '../../../profile/screen/profile_screen.dart';
import '../widgets/explore_app.dart';
import '../widgets/explore_body.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: ExploreAppBar(),
      body: ExploreBody(), // استخدم ExploreBody هنا
      bottomNavigationBar: Container(
        height: SizeConfig.heightPercentage(10), // استخدم SizeConfig هنا
        child: Stack(
          children: [
            // الخلفية
            Positioned(
              top: 0,
              child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.heightPercentage(12), // استخدم SizeConfig هنا
                child: Image.asset(
                  AppImage.vector2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // أيقونة الصفحة الرئيسية
            Positioned(
              top: SizeConfig.heightPercentage(4), // استخدم SizeConfig هنا
              left: SizeConfig.widthPercentage(8), // استخدم SizeConfig هنا
              child: GestureDetector(
                onTap: () {
                  print("Home icon clicked");
                  Get.to(() => ExploreView(), transition: Transition.fade, duration: Duration(milliseconds: 300));
                },
                child: SizedBox(
                  width: SizeConfig.widthPercentage(8), // استخدم SizeConfig هنا
                  height: SizeConfig.heightPercentage(5), // استخدم SizeConfig هنا
                  child: Image.asset(AppImage.home),
                ),
              ),
            ),
            // أيقونة الحب - FavouriteScreen
            Positioned(
              top: SizeConfig.heightPercentage(4), // استخدم SizeConfig هنا
              left: SizeConfig.widthPercentage(20), // استخدم SizeConfig هنا
              child: GestureDetector(
                onTap: () {
                  print("Love icon clicked - Navigating to FavouriteScreen");
                  Get.to(() => FavouriteScreen(), transition: Transition.fade, duration: Duration(milliseconds: 300));
                },
                child: SizedBox(
                  width: SizeConfig.widthPercentage(8), // استخدم SizeConfig هنا
                  height: SizeConfig.heightPercentage(5), // استخدم SizeConfig هنا
                  child: Image.asset(AppImage.love),
                ),
              ),
            ),
            // أيقونة الإشعارات
            Positioned(
              top: SizeConfig.heightPercentage(4), // استخدم SizeConfig هنا
              right: SizeConfig.widthPercentage(22), // استخدم SizeConfig هنا
              child: GestureDetector(
                onTap: () {
                  print("Notification icon clicked - Navigating to NotificationScreen");
                  Get.to(() => NotificationScreen(), transition: Transition.fade, duration: Duration(milliseconds: 300));
                },
                child: SizedBox(
                  width: SizeConfig.widthPercentage(10), // استخدم SizeConfig هنا
                  height: SizeConfig.heightPercentage(5), // استخدم SizeConfig هنا
                  child: Image.asset(AppImage.notification_icon),
                ),
              ),
            ),
            // أيقونة الملف الشخصي
            Positioned(
              top: SizeConfig.heightPercentage(4), // استخدم SizeConfig هنا
              right: SizeConfig.widthPercentage(8), // استخدم SizeConfig هنا
              child: GestureDetector(
                onTap: () {
                  print("Profile icon clicked - Navigating to ProfileScreen");
                  Get.to(() => ProfileScreen(), transition: Transition.fade, duration: Duration(milliseconds: 300));
                },
                child: SizedBox(
                  width: SizeConfig.widthPercentage(10), // استخدم SizeConfig هنا
                  height: SizeConfig.heightPercentage(5), // استخدم SizeConfig هنا
                  child: Image.asset(AppImage.person2),
                ),
              ),
            ),
            // أيقونة عربة التسوق - Shopping Cart
            Positioned(
              top: SizeConfig.heightPercentage(0), // استخدم SizeConfig هنا
              right: SizeConfig.widthPercentage(39), // استخدم SizeConfig هنا
              child: GestureDetector(
                onTap: () {
                  print("Shopping cart icon clicked - Navigating to MyCartScreen");
                  Get.to(() => MyCartScreen(), transition: Transition.fade, duration: Duration(milliseconds: 300));
                },
                child: SizedBox(
                  width: SizeConfig.widthPercentage(20), // زودت الحجم هنا
                  height: SizeConfig.heightPercentage(10), // زودت الحجم هنا
                  child: Image.asset(AppImage.shopping_cart),
                ),
              ),
            ), Positioned(
              top: SizeConfig.heightPercentage(-1), // استخدم SizeConfig هنا
              right: SizeConfig.widthPercentage(39), // استخدم SizeConfig هنا
              child: GestureDetector(
                onTap: () {
                  print("Shopping cart icon clicked - Navigating to MyCartScreen");
                  Get.to(() => MyCartScreen(), transition: Transition.fade, duration: Duration(milliseconds: 300));
                },
                child: SizedBox(
                  width: SizeConfig.widthPercentage(20), // زودت الحجم هنا
                  height: SizeConfig.heightPercentage(10), // زودت الحجم هنا
                  child: Image.asset(AppImage.bag),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

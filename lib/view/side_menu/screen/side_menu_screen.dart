import 'package:cart_project/core/const_data/app_colors.dart';
import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:cart_project/view/my_cart/screen/my_cart_screen.dart';
import 'package:cart_project/view/notification/screen/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../favourite_page/screen/favourite_screen.dart';
import '../../profile/screen/profile_screen.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return Scaffold(
      backgroundColor: Mycolor.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.heightPercentage(4), // نسبة من ارتفاع الشاشة
            left: SizeConfig.widthPercentage(10), // نسبة من عرض الشاشة
            child: Container(
              width: SizeConfig.widthPercentage(35), // نسبة من عرض الشاشة
              height: SizeConfig.heightPercentage(30), // نسبة من ارتفاع الشاشة
              child: Image.asset(AppImage.person),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(35),
            left: SizeConfig.widthPercentage(10),
            child: GestureDetector(
              onTap: () {
                Get.to(() => ProfileScreen(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 300),
                );
              },
              child: Container(
                width: SizeConfig.widthPercentage(75),
                height: SizeConfig.heightPercentage(3),
                child: Image.asset(AppImage.profile_image),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(42),
            left: SizeConfig.widthPercentage(10),
            child: GestureDetector(
              onTap: () {
                Get.to(() => MyCartScreen(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 300),
                );
              },
              child: Container(
                width: SizeConfig.widthPercentage(75),
                height: SizeConfig.heightPercentage(3),
                child: Image.asset(AppImage.cart_image),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(48),
            left: SizeConfig.widthPercentage(10),
            child: GestureDetector(
              onTap: () {
                Get.to(() => FavouriteScreen(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 300),
                );
              },
              child: Container(
                width: SizeConfig.widthPercentage(75),
                height: SizeConfig.heightPercentage(3),
                child: Image.asset(AppImage.favorite_image),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(54),
            left: SizeConfig.widthPercentage(10),
            child: Container(
              width: SizeConfig.widthPercentage(75),
              height: SizeConfig.heightPercentage(3),
              child: Image.asset(AppImage.order_image),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(61),
            left: SizeConfig.widthPercentage(10),
            child: GestureDetector(
              onTap: () {
                Get.to(() => NotificationScreen(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 300),
                );
              },
              child: Container(
                width: SizeConfig.widthPercentage(78),
                height: SizeConfig.heightPercentage(3),
                child: Image.asset(AppImage.notification_image),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(67),
            left: SizeConfig.widthPercentage(11),
            child: Container(
              width: SizeConfig.widthPercentage(78),
              height: SizeConfig.heightPercentage(3),
              child: Image.asset(AppImage.setting_image),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(74),
            left: SizeConfig.widthPercentage(8),
            right: SizeConfig.widthPercentage(8),
            child: Container(
              width: SizeConfig.widthPercentage(78),
              height: SizeConfig.heightPercentage(3),
              child: Image.asset(AppImage.line),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(78),
            left: SizeConfig.widthPercentage(11),
            child: GestureDetector(
              onTap: () {
                Get.to(() => ExploreView(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 300),
                );
              },
              child: Container(
                width: SizeConfig.widthPercentage(28),
                height: SizeConfig.heightPercentage(3),
                child: Image.asset(AppImage.sign_out),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

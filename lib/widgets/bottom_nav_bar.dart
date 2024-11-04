import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../media_query_service.dart';
import '../../view/favourite_page/screen/favourite_screen.dart';
import '../../view/my_cart/screen/my_cart_screen.dart';
import '../../view/notification/screen/notification_screen.dart';
import '../../view/profile/screen/profile_screen.dart';
import '../core/const_data/app_image.dart';

class BottomNavBarWidget extends StatelessWidget {
  final String homeImage;
  final String loveImage;

  BottomNavBarWidget({
    required this.homeImage,
    required this.loveImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.heightPercentage(89),
          child: Container(
            width: SizeConfig.widthPercentage(100),
            height: SizeConfig.heightPercentage(12),
            child: Image.asset(
              AppImage.vector2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.heightPercentage(94.5),
          left: SizeConfig.widthPercentage(7),
          child: GestureDetector(
            onTap: () {
              Get.to(
                    () => ExploreView(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 300),
              );
            },
            child: Image.asset(homeImage, width: SizeConfig.widthPercentage(7)),
          ),
        ),
        Positioned(
          top: SizeConfig.heightPercentage(94),
          left: SizeConfig.widthPercentage(20),
          child: GestureDetector(
            onTap: () {
              Get.to(
                    () => FavouriteScreen(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 300),
              );
            },
            child: Image.asset(loveImage, width: SizeConfig.widthPercentage(10)),
          ),
        ),
        Positioned(
          top: SizeConfig.heightPercentage(94),
          right: SizeConfig.widthPercentage(7),
          child: GestureDetector(
            onTap: () {
              Get.to(
                    () => ProfileScreen(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 300),
              );
            },
            child: Image.asset(AppImage.person2, width: SizeConfig.widthPercentage(10)),
          ),
        ),
        Positioned(
          top: SizeConfig.heightPercentage(94),
          right: SizeConfig.widthPercentage(20),
          child: GestureDetector(
            onTap: () {
              Get.to(
                    () => NotificationScreen(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 300),
              );
            },
            child: Image.asset(AppImage.notification_icon, width: SizeConfig.widthPercentage(10)),
          ),
        ),
        Positioned(
          top: SizeConfig.heightPercentage(89),
          left: SizeConfig.widthPercentage(40),
          right: SizeConfig.widthPercentage(40),
          child: GestureDetector(
            onTap: () {
              Get.to(
                    () => MyCartScreen(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 300),
              );
            },
            child: Image.asset(AppImage.shopping_cart, width: SizeConfig.widthPercentage(60)),
          ),
        ),
        Positioned(
          top: SizeConfig.heightPercentage(91.2),
          left: SizeConfig.widthPercentage(46.4),
          child: GestureDetector(
            onTap: () {
              Get.to(
                    () => MyCartScreen(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 300),
              );
            },
            child: Image.asset(AppImage.bag, width: SizeConfig.widthPercentage(7)),
          ),
        ),
      ],
    );
  }
}

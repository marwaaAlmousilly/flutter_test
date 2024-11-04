import 'package:cart_project/core/const_data/app_colors.dart';
import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:flutter/material.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/bottom_nav_bar.dart';
import '../../../widgets/daynamic_image.dart';
import '../../../widgets/heart_icon_button.dart';
import '../../../widgets/icon_button.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // تهيئة SizeConfig للحصول على حجم الشاشة
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Mycolor.textfaild,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.heightPercentage(8),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(12),
              height: SizeConfig.heightPercentage(6),
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(9.9),
            left: SizeConfig.widthPercentage(8),
            child: IconBackButton(nextPage: ExploreView()),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(10),
            left: SizeConfig.widthPercentage(40),
            child: Container(
              width: SizeConfig.widthPercentage(30),
              height: SizeConfig.heightPercentage(4),
              child: Text(
                'Favourite',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Mycolor.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(8),
            right: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(12),
              height: SizeConfig.heightPercentage(6),
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(8.3),
            right: SizeConfig.widthPercentage(5.3),
            child: HeartIconButton(),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(17),
            left: SizeConfig.widthPercentage(5),
            child: DynamicImageWidget(
              width: SizeConfig.widthPercentage(40),
              height: SizeConfig.heightPercentage(30),
              imagePath: AppImage.t_shirt_left,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(20),
            left: SizeConfig.widthPercentage(5.8),
            child: HeartIconButton(),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(17),
            right: SizeConfig.widthPercentage(5),
            child: DynamicImageWidget(
              width: SizeConfig.widthPercentage(40),
              height: SizeConfig.heightPercentage(30),
              imagePath: AppImage.t_shirt_right,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(20),
            right: SizeConfig.widthPercentage(32.5),
            child: HeartIconButton(),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(47),
            left: SizeConfig.widthPercentage(5),
            child: DynamicImageWidget(
              width: SizeConfig.widthPercentage(40),
              height: SizeConfig.heightPercentage(30),
              imagePath: AppImage.t_shirt_left2,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(50),
            left: SizeConfig.widthPercentage(5.8),
            child: HeartIconButton(),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(47),
            right: SizeConfig.widthPercentage(5),
            child: DynamicImageWidget(
              width: SizeConfig.widthPercentage(40),
              height: SizeConfig.heightPercentage(30),
              imagePath: AppImage.t_shirt_right2,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(50),
            right: SizeConfig.widthPercentage(32.5),
            child: HeartIconButton(),
          ),
          BottomNavBarWidget(
            homeImage: 'assets/images/home-2_black.png',
            loveImage: 'assets/images/love2_green.png',
          )
        ],
      ),
    );
  }
}

import 'package:cart_project/core/const_data/app_image.dart';
import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../media_query_service.dart';
import '../../../widgets/icon_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استدعاء كلاس SizeConfig لتخزين الحجم
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Mycolor.white2,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.screenHeight * 0.1,
            left: SizeConfig.screenWidth * 0.08,
            child: IconBackButton(nextPage: ExploreView()),
          ),
          Positioned(
            top: SizeConfig.screenHeight * 0.09,
            left: SizeConfig.screenWidth * 0.3,
            child: Container(
              width: SizeConfig.screenWidth * 0.4,
              height: SizeConfig.screenHeight * 0.05,
              child: Text(
                'Search',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.screenWidth * 0.05,
                  fontWeight: FontWeight.w600,
                  color: Mycolor.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight * 0.09,
            left: SizeConfig.screenWidth * 0.73,
            child: GestureDetector(
              onTap: () {
                Get.to(ExploreView());
              },
              child: Container(
                width: SizeConfig.screenWidth * 0.2,
                height: SizeConfig.screenHeight * 0.04,
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    fontSize: SizeConfig.screenWidth * 0.04,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight * 0.15,
            left: SizeConfig.screenWidth * 0.05,
            right: SizeConfig.screenWidth * 0.05,
            child: Container(
              width: SizeConfig.screenWidth * 0.9,
              height: SizeConfig.screenHeight * 0.06,
              child: Stack(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: SizeConfig.screenHeight * 0.02, horizontal: SizeConfig.screenWidth * 0.12),
                      hintText: 'Search Your Shirt',
                      hintStyle: TextStyle(
                        color: Mycolor.ontextfaild.withOpacity(0.9),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Mycolor.textfaild),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Mycolor.textfaild),
                      ),
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.screenWidth * 0.02,
                    top: SizeConfig.screenHeight * 0.01,
                    bottom: SizeConfig.screenHeight * 0.01,
                    child: IconButton(
                      icon: Icon(
                        Icons.search_outlined,
                        color: Mycolor.ontextfaild.withOpacity(0.9),
                      ),
                      onPressed: () {
                        // وظيفة البحث هنا
                      },
                    ),
                  ),
                  Positioned(
                    right: SizeConfig.screenWidth * 0.02,
                    top: SizeConfig.screenHeight * 0.01,
                    bottom: SizeConfig.screenHeight * 0.01,
                    child: IconButton(
                      icon: Icon(
                        Icons.mic_none,
                        color: Mycolor.ontextfaild.withOpacity(0.9),
                      ),
                      onPressed: () {
                        // وظيفة التسجيل الصوتي هنا
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight * 0.25,
            left: SizeConfig.screenWidth * 0.05,
            child: Container(
              width: SizeConfig.screenWidth * 0.3,
              height: SizeConfig.screenHeight * 0.3,
              child: Image.asset(AppImage.searchImage),
            ),
          ),
        ],
      ),
    );
  }
}

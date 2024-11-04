import 'package:cart_project/core/const_data/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dynamic_container.dart';
import '../../auth/sign_in/screen/sign_in_screen.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // تهيئة أبعاد الشاشة

    return Scaffold(
      backgroundColor: Mycolor.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.heightPercentage(13), // نسبة من ارتفاع الشاشة
            left: SizeConfig.widthPercentage(14), // نسبة من عرض الشاشة
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: SizeConfig.widthPercentage(20),
                height: SizeConfig.heightPercentage(10),
                child: Image.asset(
                  AppImage.misc,
                  width: SizeConfig.widthPercentage(20),
                  height: SizeConfig.heightPercentage(5),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(40),
            left: SizeConfig.widthPercentage(8),
            right: SizeConfig.widthPercentage(8),
            child: Container(
              width: SizeConfig.widthPercentage(84),
              height: SizeConfig.heightPercentage(12),
              child: Text(
                'You Have The \n Power To',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(9),
                  fontWeight: FontWeight.w700,
                  height: 1.47,
                  color: Mycolor.white2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(56),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(8),
              child: Text(
                'There Are Many Beautiful And Attractive \n Plants To Your Room',
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: SizeConfig.widthPercentage(4.5),
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                  color: Mycolor.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(33),
            child: Opacity(
              opacity: 1,
              child: DynamicContainer(
                width: SizeConfig.widthPercentage(7),
                height: SizeConfig.heightPercentage(0.5),
                color: Colors.green,
                borderRadius: 5,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(42.2),
            child: Opacity(
              opacity: 1,
              child: DynamicContainer(
                width: SizeConfig.widthPercentage(7),
                height: SizeConfig.heightPercentage(0.5),
                color: Colors.green,
                borderRadius: 5,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(51.2),
            child: Opacity(
              opacity: 1,
              child: DynamicContainer(
                width: SizeConfig.widthPercentage(11),
                height: SizeConfig.heightPercentage(0.5),
                color: Mycolor.gray,
                borderRadius: 5,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(90),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomButton(
              buttonText: 'Next',
              nextPage: SignInScreen(),
            ),
          ),
        ],
      ),
    );
  }
}

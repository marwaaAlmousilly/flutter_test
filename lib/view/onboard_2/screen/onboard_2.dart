import 'package:cart_project/core/const_data/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dynamic_container.dart';
import '../../onboard_3/screen/onboard_3.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // تهيئة أبعاد الشاشة

    return Scaffold(
      backgroundColor: Mycolor.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.heightPercentage(13),
            left: SizeConfig.widthPercentage(9),
            child: Opacity(
              opacity: 0.8,
              child: Container(
                width: SizeConfig.widthPercentage(25),
                height: SizeConfig.heightPercentage(12),
                child: Image.asset(AppImage.group),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(14),
            left: SizeConfig.widthPercentage(82),
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: SizeConfig.widthPercentage(12),
                height: SizeConfig.heightPercentage(6),
                color: Mycolor.primaryColor,
                child: Image.asset(AppImage.misc),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(41),
            left: SizeConfig.widthPercentage(8),
            right: SizeConfig.widthPercentage(8),
            child: Container(
              width: SizeConfig.widthPercentage(84),
              height: SizeConfig.heightPercentage(6),
              child: Text(
                'Let’s Start Journey',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(9),
                  fontWeight: FontWeight.w900,
                  height: 1.47,
                  color: Mycolor.white2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(55),
            left: SizeConfig.widthPercentage(7),
            child: Container(
              width: SizeConfig.widthPercentage(86),
              height: SizeConfig.heightPercentage(13),
              child: Text(
                'Smart, Gorgeous & Fashionable \n Collection Explor Now',
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
                width: SizeConfig.widthPercentage(11),
                height: SizeConfig.heightPercentage(0.5),
                color: Mycolor.gray,
                borderRadius: 5,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(55),
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
            top: SizeConfig.heightPercentage(90),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomButton(
              buttonText: 'Next',
              nextPage: Onboard3(),
            ),
          ),
        ],
      ),
    );
  }
}

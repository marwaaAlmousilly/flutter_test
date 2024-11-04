import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dynamic_container.dart';
import '../../onboard_2/screen/onboard_2.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // استدعاء init لحساب أبعاد الشاشة

    return Scaffold(
      backgroundColor: Mycolor.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.heightPercentage(13),
            left: SizeConfig.widthPercentage(15),
            child: Opacity(
              opacity: 1,
              child: Container(
                width: SizeConfig.widthPercentage(7),
                height: SizeConfig.heightPercentage(4),
                child: Image.asset(AppImage.highlight),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(20),
            left: SizeConfig.widthPercentage(59),
            child: Container(
              width: SizeConfig.widthPercentage(40),
              height: SizeConfig.heightPercentage(6),
              child: Image.asset(AppImage.misc, width: SizeConfig.widthPercentage(11), height: SizeConfig.heightPercentage(3)),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(20),
            left: (SizeConfig.screenWidth - SizeConfig.widthPercentage(93)) / 2,
            child: Opacity(
              opacity: 0.4,
              child: Container(
                width: SizeConfig.widthPercentage(93),
                height: SizeConfig.heightPercentage(75),
                color: Mycolor.primaryColor,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(42),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(88),
              height: SizeConfig.heightPercentage(9),
              child: Text(
                'WELCOME TO\nBYTE BOUTIQUE',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(8),
                  fontWeight: FontWeight.w900,
                  height: 1.17,
                  color: Mycolor.white2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(53),
            left: SizeConfig.widthPercentage(30),
            child: Container(
              width: SizeConfig.widthPercentage(35),
              height: SizeConfig.heightPercentage(2.5),
              child: Image.asset(AppImage.vector, fit: BoxFit.contain),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(78),
            left: SizeConfig.widthPercentage(7),
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: SizeConfig.widthPercentage(23),
                height: SizeConfig.heightPercentage(12),
                child: Image.asset(AppImage.group1, fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            left: SizeConfig.widthPercentage(72),
            top: SizeConfig.heightPercentage(70),
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: SizeConfig.widthPercentage(23),
                height: SizeConfig.heightPercentage(12),
                child: Image.asset(AppImage.group, fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(33),
            child: Opacity(
              opacity: 1,
              child: DynamicContainer(
                  width: SizeConfig.widthPercentage(11),
                  height: SizeConfig.heightPercentage(0.5),
                  color: Mycolor.gray,
                  borderRadius: 5),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(46),
            child: Opacity(
              opacity: 1,
              child: DynamicContainer(
                  width: SizeConfig.widthPercentage(7),
                  height: SizeConfig.heightPercentage(0.5),
                  color: Colors.green,
                  borderRadius: 5),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(71),
            left: SizeConfig.widthPercentage(54.8),
            child: Opacity(
              opacity: 1,
              child: DynamicContainer(
                  width: SizeConfig.widthPercentage(7),
                  height: SizeConfig.heightPercentage(0.5),
                  color: Colors.green,
                  borderRadius: 5),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(90),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomButton(
              buttonText: 'Get Started',
              nextPage: Onboard2(),
            ),
          ),
        ],
      ),
    );
  }
}

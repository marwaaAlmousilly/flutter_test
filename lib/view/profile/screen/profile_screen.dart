import 'package:cart_project/view/home/home_home/view/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/customtextfield.dart';
import '../../../widgets/icon_button.dart';
import '../../../widgets/password.dart';
import '../../../widgets/sing_in_sing_up_custom_button.dart';
import '../../side_menu/screen/side_menu_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: SizeConfig.heightPercentage(8),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(12),
              height: SizeConfig.heightPercentage(6),
              padding: EdgeInsets.only(top: SizeConfig.heightPercentage(2)),
              decoration: BoxDecoration(
                color: Mycolor.textfaild,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(10),
            left: SizeConfig.widthPercentage(8),
            child: IconBackButton(nextPage: ExploreView()),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(9),
            left: SizeConfig.widthPercentage(40),
            child: Container(
              width: SizeConfig.widthPercentage(18),
              height: SizeConfig.heightPercentage(4),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(5),
                  fontWeight: FontWeight.w600,
                  color: Mycolor.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(16),
            left: SizeConfig.widthPercentage(35),
            right: SizeConfig.widthPercentage(35),
            child: Container(
              width: SizeConfig.widthPercentage(20),
              height: SizeConfig.heightPercentage(12),
              child: Image.asset(AppImage.profile),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(30),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(80),
              height: SizeConfig.heightPercentage(2),
              child: Text(
                'Your Name',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(4),
                  fontWeight: FontWeight.w500,
                  color: Mycolor.textColor2.withOpacity(0.8),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(34),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(6),
              child: CustomTextField(
                hintText: 'Programmer X',
                hintTextColor: Mycolor.black2.withOpacity(0.9),isNameField:true
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(42),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(2),
              child: Text(
                'Email Address',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(4),
                  fontWeight: FontWeight.w600,
                  color: Mycolor.textColor2.withOpacity(0.8),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(46),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(6),
              child: CustomTextField(
                hintText: 'Programmerx@gmail.com',
                hintTextColor: Mycolor.black2.withOpacity(0.9),isNameField:false
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(54),
            left: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(2),
              child: Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(4),
                  fontWeight: FontWeight.w500,
                  color: Mycolor.textColor2.withOpacity(0.8),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(58),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(6),
              child: CustomTextFieldPassword(hintText: '************'),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(65),
            left: SizeConfig.widthPercentage(60),
            right: SizeConfig.widthPercentage(5),
            child: Container(
              width: SizeConfig.widthPercentage(30),
              height: SizeConfig.heightPercentage(3),
              child: Text(
                'Recovery Password',
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: SizeConfig.widthPercentage(3),
                  fontWeight: FontWeight.w400,
                  color: Mycolor.textColor2.withOpacity(0.9),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(70),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomButton2(
              buttonText: 'Save Now',
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(7),
            ),
          ),
        ],
      ),
    );
  }
}

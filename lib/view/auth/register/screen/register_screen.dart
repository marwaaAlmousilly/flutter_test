import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/app_colors.dart';

import '../../../../media_query_service.dart';
import '../../../../widgets/customtextfield.dart';
import '../../../../widgets/google_daynamic_button.dart';
import '../../../../widgets/icon_button.dart';
import '../../../../widgets/password.dart';
import '../../../../widgets/sing_in_sing_up_custom_button.dart';
import '../../sign_in/screen/sign_in_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // استدعاء init لحساب أبعاد الشاشة

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
            child: IconBackButton(nextPage: SignInScreen()),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(15),
            left: SizeConfig.widthPercentage(15),
            right: SizeConfig.widthPercentage(15),
            child: Text(
              'Register Account',
              style: TextStyle(
                fontFamily: 'Raleway-Bold',
                fontSize: SizeConfig.widthPercentage(8),
                fontWeight: FontWeight.w700,
                color: Mycolor.black2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(20),
            left: SizeConfig.widthPercentage(10),
            right: SizeConfig.widthPercentage(10),
            child: Text(
              'Fill your details or continue with \n social media',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: SizeConfig.widthPercentage(4),
                fontWeight: FontWeight.w400,
                color: Mycolor.textColor2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(28),
            left: SizeConfig.widthPercentage(5),
            child: Text(
              'Your Name',
              style: TextStyle(
                fontFamily: 'Raleway-Bold',
                fontSize: SizeConfig.widthPercentage(4.5),
                fontWeight: FontWeight.w500,
                color: Mycolor.black2.withOpacity(0.8),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(33),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomTextField(hintText: '*********', isNameField: true),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(41),
            left: SizeConfig.widthPercentage(5),
            child: Text(
              'Email Address',
              style: TextStyle(
                fontFamily: 'Raleway-Bold',
                fontSize: SizeConfig.widthPercentage(4.5),
                fontWeight: FontWeight.w500,
                color: Mycolor.black2.withOpacity(0.8),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(45),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child:
                CustomTextField(hintText: 'xyz@gmail.com', isNameField: false),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(52),
            left: SizeConfig.widthPercentage(5),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Raleway-Bold',
                fontSize: SizeConfig.widthPercentage(4.5),
                fontWeight: FontWeight.w500,
                color: Mycolor.black2.withOpacity(0.8),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(56),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomTextFieldPassword(hintText: '********'),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(67),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: CustomButton2(
              buttonText: 'Sign Up',
              width: SizeConfig.widthPercentage(90),
              height: SizeConfig.heightPercentage(7),
              isSignUp: true,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(77),
            left: SizeConfig.widthPercentage(5),
            right: SizeConfig.widthPercentage(5),
            child: DynamicButton(
              buttonText: 'Sign in with Google',
              onPressed: () {},
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(95),
            left: SizeConfig.widthPercentage(15),
            child: Text(
              'Already Have Account?',
              style: TextStyle(
                fontFamily: 'Raleway-Bold',
                fontSize: SizeConfig.widthPercentage(4.5),
                fontWeight: FontWeight.w500,
                color: Mycolor.textColor2.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: SizeConfig.heightPercentage(95),
            left: SizeConfig.widthPercentage(68),
            child: GestureDetector(
              onTap: () {
                Get.to(SignInScreen());
              },
              child: Text(
                'Log in',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(4.5),
                  fontWeight: FontWeight.w500,
                  color: Mycolor.black2.withOpacity(0.8),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

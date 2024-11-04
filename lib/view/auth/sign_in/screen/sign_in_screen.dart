import 'package:cart_project/core/const_data/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../media_query_service.dart';
import '../../../../widgets/customtextfield.dart';
import '../../../../widgets/google_daynamic_button.dart';
import '../../../../widgets/icon_button.dart';
import '../../../../widgets/password.dart';
import '../../../../widgets/sing_in_sing_up_custom_button.dart';
import '../../../onboard_3/screen/onboard_3.dart';
import '../../register/screen/register_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // استدعاء init لحساب أبعاد الشاشة

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Mycolor.textfaild,
            borderRadius: BorderRadius.circular(40),
          ),
          child: IconBackButton(nextPage: Onboard3()),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Hello Again!',
                  style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    fontSize: SizeConfig.widthPercentage(8),
                    fontWeight: FontWeight.w700,
                    color: Mycolor.black2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
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
              const SizedBox(
                height: 50,
              ),
              Text(
                'Email Address',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(4.5),
                  fontWeight: FontWeight.w500,
                  color: Mycolor.black2,
                ),
              ),
              CustomTextField(hintText: 'xyz@gmail.com'),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'Raleway-Bold',
                  fontSize: SizeConfig.widthPercentage(4.5),
                  fontWeight: FontWeight.w500,
                  color: Mycolor.black2,
                ),
              ),
              CustomTextFieldPassword(hintText: '********'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Recovery Password',
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: SizeConfig.widthPercentage(3),
                  fontWeight: FontWeight.w400,
                  color: Mycolor.textColor2.withOpacity(0.9),
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton2(
                buttonText: 'Sign in',
                width: SizeConfig.widthPercentage(90),
                height: SizeConfig.heightPercentage(7),
              ),
              const SizedBox(
                height: 20,
              ),
              DynamicButton(
                buttonText: 'Sign in with Google',
                onPressed: () {},
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New User? ',
                    style: TextStyle(
                      fontFamily: 'Raleway-Bold',
                      fontSize: SizeConfig.widthPercentage(4.5),
                      fontWeight: FontWeight.w500,
                      color: Mycolor.textColor2.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(RegisterScreen());
                    },
                    child: Text(
                      'Create Account ',
                      style: TextStyle(
                        fontFamily: 'Raleway-Bold',
                        fontSize: SizeConfig.widthPercentage(4.5),
                        fontWeight: FontWeight.w500,
                        color: Mycolor.black2.withOpacity(0.8),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

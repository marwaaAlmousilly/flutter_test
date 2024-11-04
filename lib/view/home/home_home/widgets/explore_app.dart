import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/const_data/app_image.dart';
import '../../../../media_query_service.dart';
import '../../../my_cart/screen/my_cart_screen.dart';
import '../../../side_menu/screen/side_menu_screen.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // تهيئة SizeConfig

    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Color(0xFFF5F5F5),
      title: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              Transform.translate(
                offset: Offset(-SizeConfig.widthPercentage(2), 0), // استخدم القيم من SizeConfig
                child: IconButton(
                  icon: Image.asset(
                    AppImage.sett,
                    height: SizeConfig.heightPercentage(5), // استخدم القيم من SizeConfig
                    width: SizeConfig.widthPercentage(8),  // استخدم القيم من SizeConfig
                  ),
                  onPressed: () {
                    Get.to(() => SideMenuScreen());
                  },
                ),
              ),
              SizedBox(width: SizeConfig.widthPercentage(3),), // استخدم القيم من SizeConfig
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: SizeConfig.heightPercentage(1)), // استخدم القيم من SizeConfig
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.widthPercentage(6), // استخدم القيم من SizeConfig
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: SizeConfig.widthPercentage(26), // استخدم القيم من SizeConfig
            top: -1,
            child: Transform.translate(
              offset: Offset(-SizeConfig.widthPercentage(2), 0), // استخدم القيم من SizeConfig
              child: Image.asset(
                AppImage.light,
                height: SizeConfig.heightPercentage(3), // استخدم القيم من SizeConfig
                width: SizeConfig.heightPercentage(7), // استخدم القيم من SizeConfig
              ),
            ),
          ),
        ],
      ),
      actions: [
        Transform.translate(
          offset: Offset(-SizeConfig.widthPercentage(2), 0), // استخدم القيم من SizeConfig
          child: IconButton(
            icon: Image.asset(
              AppImage.bagred,
              height: SizeConfig.heightPercentage(8), // استخدم القيم من SizeConfig
              width: SizeConfig.heightPercentage(8), // استخدم القيم من SizeConfig
            ),
            onPressed: () {
              Get.to(() => MyCartScreen());
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

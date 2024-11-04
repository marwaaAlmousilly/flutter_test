import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/const_data/app_image.dart';
import '../../../../media_query_service.dart';
import '../../../favourite_page/screen/favourite_screen.dart';
import '../../../my_cart/screen/my_cart_screen.dart';

class ProductDetailsContent extends StatelessWidget {
  final String shortText;
  final String fullText;
  final bool showFullText;
  final VoidCallback onToggleText;

  const ProductDetailsContent({
    required this.shortText,
    required this.fullText,
    required this.showFullText,
    required this.onToggleText,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AppImage.pic1,
      AppImage.pic2,
      AppImage.pic3,
      AppImage.pic4,
      AppImage.pic1,
    ];

    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.translate(
                offset: Offset(0.0, -SizeConfig.heightPercentage(3.6)),
                child: Image.asset(
                  AppImage.liner,
                  height: SizeConfig.heightPercentage(10),
                  width: SizeConfig.widthPercentage(80),
                ),
              ),
              Transform.translate(
                offset: Offset(0.0, -SizeConfig.heightPercentage(0.07)),
                child: Image.asset(
                  AppImage.slider,
                  height: SizeConfig.heightPercentage(7),
                  width: SizeConfig.widthPercentage(20),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((image) {
            return Transform.translate(
              offset: Offset(0.0, -SizeConfig.heightPercentage(0.1)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthPercentage(1)),
                child: Image.asset(
                  image,
                  height: SizeConfig.heightPercentage(10),
                  width: SizeConfig.widthPercentage(15),
                ),
              ),
            );
          }).toList(),
        ),
        Transform.translate(
          offset: Offset(0.0, -SizeConfig.heightPercentage(0.1)),
          child: Text(
            showFullText ? fullText : shortText,
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.widthPercentage(3.5),
              color: Color(0xFF707B81),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: onToggleText,
            child: Padding(
              padding: EdgeInsets.only(right: SizeConfig.widthPercentage(5)),
              child: Text(
                showFullText ? "Read Less" : "Read More",
                style: TextStyle(
                  fontSize: SizeConfig.widthPercentage(4),
                  color: Color(0xFF34C759),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset(AppImage.favorite),
              onPressed: () {
                Get.to(() => FavouriteScreen());
              },
            ),
            SizedBox(width: SizeConfig.widthPercentage(5)),
            GestureDetector(
              onTap: () {
                Get.to(() => MyCartScreen());
              },
              child: Container(
                width: SizeConfig.widthPercentage(50),
                height: SizeConfig.heightPercentage(7),
                decoration: BoxDecoration(
                  color: Color(0xFF34C759),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImage.bag,
                      height: SizeConfig.heightPercentage(4),
                      width: SizeConfig.widthPercentage(7),
                    ),
                    SizedBox(width: SizeConfig.widthPercentage(2)),
                    Text(
                      "Add to Cart",
                      style: GoogleFonts.raleway(
                        fontSize: SizeConfig.widthPercentage(4),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

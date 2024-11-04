import 'package:cart_project/core/service/link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../view/home/details/screen/details.dart';
import '../core/const_data/app_image.dart';

class CustomProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productLabel; // مثل "BEST SELLER"
  final double price;

  const CustomProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    this.productLabel = "BEST SELLER",
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        // التنقل إلى صفحة تفاصيل المنتج عند النقر على البطاقة
        Get.to(() => ProductDetailsScreen(
              productName: productName,
              price: price,
              imageUrl: imageUrl,
            ));
      },
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.04),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset(AppImage.teshert,
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.095,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Icon(
                    Icons.favorite_border, // إزالة حالة المفضلة من البطاقة
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productLabel,
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                SizedBox(height: screenHeight * 0.005),
                Text(
                  productName,
                  style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.032,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.029,
                  ),
                ),
                Transform.translate(
                  offset: Offset(
                    screenWidth * 0.03,
                    screenHeight * 0.07,
                  ),
                  child: SvgPicture.asset(
                    AppImage.plus,
                    width: screenWidth * 0.08, // تعديل حجم الأيقونة
                    height: screenHeight * 0.031,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

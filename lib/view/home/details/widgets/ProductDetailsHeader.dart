import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/const_data/app_image.dart';
import '../../../../media_query_service.dart';

class ProductDetailsHeader extends StatelessWidget {
  final String productName;
  final double price;

  const ProductDetailsHeader({
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.heightPercentage(1)),
        Text(
          productName,
          style: GoogleFonts.raleway(
            fontSize: SizeConfig.widthPercentage(5),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.heightPercentage(0)),
        Text(
          'Men’s T-shirt',
          style: GoogleFonts.raleway(
            fontSize: SizeConfig.widthPercentage(4),
            color: Color(0xFF707B81),
          ),
        ),
        SizedBox(height: SizeConfig.heightPercentage(0)),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.translate(
                offset: Offset(SizeConfig.widthPercentage(2), SizeConfig.heightPercentage(0)),
                child: Image.asset(
                  AppImage.tshirt5,
                  height: SizeConfig.heightPercentage(35),
                  width: SizeConfig.widthPercentage(60),
                  fit: BoxFit.contain,
                ),
              ),
              Transform.translate(
                offset: Offset(-SizeConfig.widthPercentage(36), -SizeConfig.heightPercentage(15)),
                child: Text(
                  "\$$price",
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.widthPercentage(5),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/const_data/app_image.dart';
import '../../../../media_query_service.dart';
import '../../../my_cart/screen/my_cart_screen.dart';
import '../widgets/ProductDetailsContent.dart';
import '../widgets/ProductDetailsHeader.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String productName;
  final double price;
  final String imageUrl;

  const ProductDetailsScreen({
    required this.productName,
    required this.price,
    required this.imageUrl,
  });

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool _showFullText = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final String shortText =
        "Programming and Software Engineering are your passion? Then this is made for you as a developer. Perfect surprise for any programmer, software engineer, developer, coder, computer nerd out there who lives and breathes code.";
    final String fullText = shortText +
        " Whether you're debugging, building new features, or simply immersed in the world of algorithms and data structures, this is tailored to fuel your enthusiasm.";

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0), // مسافة حول الدائرة
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // لون الخلفية (الدائرة)
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: Text("T-shirt Shop",
            style:
                GoogleFonts.raleway(fontSize: SizeConfig.widthPercentage(5))),
        actions: [
          IconButton(
            icon: Image.asset(AppImage.cart),
            onPressed: () {
              Get.to(() => MyCartScreen());
            },
          ),
        ],
        backgroundColor: Color(0xFFF5F5F5),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(SizeConfig.widthPercentage(3)),
        child: Column(
          children: [
            ProductDetailsHeader(
              productName: widget.productName,
              price: widget.price,
            ),
            ProductDetailsContent(
              shortText: shortText,
              fullText: fullText,
              showFullText: _showFullText,
              onToggleText: () {
                setState(() {
                  _showFullText = !_showFullText;
                });
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}

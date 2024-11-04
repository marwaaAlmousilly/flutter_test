import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/const_data/app_image.dart';
import '../../../../media_query_service.dart';
import '../../../../widgets/category.dart';
import '../../../../widgets/product.dart';
import '../../../search/screen/search_screen.dart';
import '../controller/controller.dart';

class ExploreBody extends StatelessWidget {
  final ExploreController exploreController = Get.put(ExploreController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // تهيئة SizeConfig

    return Obx(
          () => Padding(
        padding: EdgeInsets.all(SizeConfig.heightPercentage(2)), // استخدم قيم من SizeConfig
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // شريط البحث
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Looking for ......",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search, size: SizeConfig.heightPercentage(3)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(SizeConfig.heightPercentage(1.5)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: SizeConfig.widthPercentage(2)),
                Transform.translate(
                  offset: Offset(-SizeConfig.widthPercentage(2), 0),
                  child: IconButton(
                    icon: Image.asset(
                      AppImage.set,
                      height: SizeConfig.heightPercentage(5),
                      width: SizeConfig.heightPercentage(5),
                    ),
                    onPressed: () {
                      Get.to(() => SearchScreen());
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.heightPercentage(2)),
            Padding(
              padding: EdgeInsets.only(bottom: SizeConfig.heightPercentage(1)),
              child: Text(
                "Select Category",
                style: GoogleFonts.raleway(fontSize: SizeConfig.heightPercentage(2.5)),
              ),
            ),
            // خيارات الفئات
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryBox("Man", context, () {
                  exploreController.selectCategory("man");
                }),
                categoryBox("Woman", context, () {
                  exploreController.selectCategory("woman");
                }),
                categoryBox("Child", context, () {
                  exploreController.selectCategory("child");
                }),
              ],
            ),
            SizedBox(height: SizeConfig.heightPercentage(2)),
            // قائمة المنتجات
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.heightPercentage(1)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular T-shirt",
                      style: GoogleFonts.raleway(fontSize: SizeConfig.heightPercentage(2.5)),
                    ),
                    TextButton(
                      onPressed: () {
                        // هنا يمكنك إضافة التنقل إلى صفحة جديدة
                      },
                      child: Text(
                        "See all",
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.heightPercentage(2.5),
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            exploreController.loading.value
                ? Center(
              child: CircularProgressIndicator(),
            )
                : Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.widthPercentage(4),
                  mainAxisSpacing: SizeConfig.heightPercentage(2),
                  childAspectRatio: 0.75,
                ),
                itemCount: exploreController.products.length,
                itemBuilder: (context, index) {
                  final product = exploreController.products[index];
                  return CustomProductCard(
                    imageUrl: product.image,
                    productName: product.name,
                    price: product.price,
                    productLabel: product.isBestSeller ? "BEST SELLER" : "",
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.heightPercentage(1)),
              child: Row(
                children: [
                  Text(
                    "New Arrivals",
                    style: GoogleFonts.raleway(
                      fontSize: SizeConfig.heightPercentage(2.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // هنا يمكنك إضافة التنقل إلى صفحة جديدة
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.heightPercentage(2.5),
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: SizeConfig.heightPercentage(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.widthPercentage(4),
                      top: SizeConfig.heightPercentage(1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Summer Sale",
                          style: GoogleFonts.raleway(
                            fontSize: SizeConfig.heightPercentage(1.75),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightPercentage(0.5)),
                        Row(
                          children: [
                            SizedBox(height: SizeConfig.heightPercentage(2)),
                            Transform.translate(
                              offset: Offset(4.0, 16.0),
                              child: Image.asset(
                                AppImage.star,
                                height: SizeConfig.heightPercentage(3),
                                width: SizeConfig.heightPercentage(3),
                              ),
                            ),
                            SizedBox(width: SizeConfig.widthPercentage(1)),
                            Text(
                              "15% OFF",
                              style: TextStyle(
                                fontSize: SizeConfig.heightPercentage(4),
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF674DC5),
                                fontFamily: 'FuturaPTBold',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: SizeConfig.widthPercentage(4),
                  top: -SizeConfig.heightPercentage(5),
                  child: Image.asset(
                    AppImage.tshirt2,
                    height: SizeConfig.heightPercentage(18),
                    width: SizeConfig.heightPercentage(10),
                  ),
                ),
                Positioned(
                  right: SizeConfig.widthPercentage(2),
                  top: SizeConfig.heightPercentage(3),
                  child: Image.asset(
                    AppImage.star2,
                    height: SizeConfig.heightPercentage(2),
                    width: SizeConfig.heightPercentage(2),
                  ),
                ),
                Positioned(
                  right: SizeConfig.widthPercentage(18),
                  top: SizeConfig.heightPercentage(1),
                  child: Image.asset(
                    AppImage.star2,
                    height: SizeConfig.heightPercentage(2),
                    width: SizeConfig.heightPercentage(2),
                  ),
                ),
                Positioned(
                  right: SizeConfig.widthPercentage(16),
                  top: SizeConfig.heightPercentage(10),
                  child: Image.asset(
                    AppImage.star2,
                    height: SizeConfig.heightPercentage(2),
                    width: SizeConfig.heightPercentage(2),
                  ),
                ),
                Positioned(
                  right: SizeConfig.widthPercentage(21),
                  top: SizeConfig.heightPercentage(2),
                  child: Image.asset(
                    AppImage.neww,
                    height: SizeConfig.heightPercentage(3),
                    width: SizeConfig.heightPercentage(3),
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

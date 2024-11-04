import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/home/home_home/controller/controller.dart';

// دالة لإنشاء صندوق الفئة
Widget categoryBox(String category, BuildContext context, VoidCallback onTap) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return GestureDetector(
    onTap: onTap, // عند الضغط على الصندوق، يتم استدعاء دالة onTap
    child: Container(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.015,
        horizontal: screenWidth * 0.05,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        category,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: screenWidth * 0.035,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    ),
  );
}

class ExplorePage extends StatelessWidget {
  final ExploreController exploreController = Get.put(ExploreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Products'),
      ),
      body: Obx(() {
        if (exploreController.loading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            // عرض صناديق الفئات
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryBox("Men", context, () {
                  exploreController.selectCategory("man");
                }),
                categoryBox("Women", context, () {
                  exploreController.selectCategory("woman");
                }),
                categoryBox("Children", context, () {
                  exploreController.selectCategory("child");
                }),
              ],
            ),
            // عرض قائمة المنتجات
            Expanded(
              child: ListView.builder(
                itemCount: exploreController.products.length,
                itemBuilder: (context, index) {
                  final product = exploreController.products[index];
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.asset(product.image),
                      title: Text(product.name),
                      subtitle: Text("Price: \$${product.price}"),
                      trailing: product.isBestSeller
                          ? Icon(Icons.star, color: Colors.amber)
                          : null,
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}

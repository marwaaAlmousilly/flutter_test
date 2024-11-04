import 'dart:convert';
import 'package:cart_project/core/service/link.dart';
import 'package:cart_project/core/service/my_sevice.dart';
import 'package:get/get.dart';
import '../../../../modle/modle_home/home.dart';
import 'package:http/http.dart' as http;

class ExploreController extends GetxController {
  // المتغيرات الخاصة بالفئات والمنتجات
  var selectedCategory = "man".obs; // يمكنك تغيير القيمة الافتراضية إذا رغبت
  var products = <Product>[].obs;
  MyService myService = Get.find<MyService>();
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts(); // جلب المنتجات عند التهيئة
  }

  // دالة لتغيير الفئة المحددة
  void selectCategory(String category) {
    selectedCategory.value = category;
    fetchProducts(); // جلب المنتجات بناءً على الفئة المحددة
  }

  // جلب المنتجات بناءً على الفئة المحددة
  void fetchProducts() async {
    loading.value = true;
    var productList = <Product>[]; // قائمة المنتجات التي سيتم ملؤها
    final token = await myService.getAccessToken();

    // جلب المنتجات من الـ API
    final response = await http.get(Uri.parse(AppLink.products),
        headers: {'Authorization': 'Bearer ${token}'});
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      for (final item in data['data']) {
        productList.add(Product(
            name: item['name'],
            image: item['image'],
            price: double.parse(item['price'].toString()),
            isBestSeller: false));
      }
    }

    // تحديث قائمة المنتجات المعروضة
    products.value = productList;
    products.refresh();

    // تحديد المنتجات بناءً على الفئة المحددة
    if (selectedCategory.value == "man") {
      products.addAll([
        Product(
          name: "Programmer T-shirt",
          image: "assets/images/img_9.png",
          price: 150,
          isBestSeller: true,
        ),
        Product(
          name: "Programmer T-shirt",
          image: "assets/images/img_10.png",
          price: 200,
          isBestSeller: false,
        ),
      ]);
    } else if (selectedCategory.value == "woman") {
      products.addAll([
        Product(
          name: "Woman T-shirt 1",
          image: "assets/images/img_11.png",
          price: 175,
          isBestSeller: true,
        ),
        Product(
          name: "Woman T-shirt 2",
          image: "assets/images/img_12.png",
          price: 220,
          isBestSeller: false,
        ),
      ]);
    } else if (selectedCategory.value == "child") {
      products.addAll([
        Product(
          name: "Child T-shirt 1",
          image: "assets/images/img_13.png",
          price: 100,
          isBestSeller: true,
        ),
        Product(
          name: "Child T-shirt 2",
          image: "assets/images/img_14.png",
          price: 120,
          isBestSeller: false,
        ),
      ]);
    }

    loading.value = false; // إنهاء تحميل
  }
}

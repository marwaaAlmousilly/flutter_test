import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final String productName;
  final double price;
  final String imageUrl;

  // متغير قابل للمراقبة للتحكم في عرض النص الكامل
  RxBool showFullText = false.obs;

  ProductDetailsController({
    required this.productName,
    required this.price,
    required this.imageUrl,
  });

  // نص قصير
  final String shortText =
      "Programming and Software Engineering are your passion? Then this is made for you as a developer. Perfect surprise for any programmer, software engineer, developer, coder, computer nerd out there who lives and breathes code.";

  // نص طويل
  final String fullText =
      "Programming and Software Engineering are your passion? Then this is made for you as a developer. Perfect surprise for any programmer, software engineer, developer, coder, computer nerd out there who lives and breathes code."
      " Whether you're debugging, building new features, or simply immersed in the world of algorithms and data structures, this is tailored to fuel your enthusiasm. Ideal for those who love solving complex problems, learning new technologies, or creating innovative software solutions. Show off your developer pride and celebrate your love for coding with this unique offering!";

  // وظيفة لتبديل حالة عرض النص
  void toggleText() {
    showFullText.value = !showFullText.value;
  }
}

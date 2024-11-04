import 'package:get/get.dart';

class CartController extends GetxController {
  int quantity = 1;

  void increment() {
    quantity++;
    update(); // تحديث واجهة المستخدم عند التغيير
  }

  void decrement() {
    if (quantity > 1) {
      quantity--;
      update(); // تحديث واجهة المستخدم عند التغيير
    }
  }
}

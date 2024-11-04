import 'package:get/get.dart';
import '../core/class/crud.dart';
import '../core/network_connection/network_connection/network_connection.dart';



class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(NetworkManager());
   // Get.lazyPut<HomePageController>(() => HomePageController());
  }
}

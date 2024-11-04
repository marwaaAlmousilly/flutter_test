import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class MyService extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyService> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  saveToken(String token) async {
    await sharedPreferences.setString('token', token);
  }

  getAccessToken() async {
    return await sharedPreferences.getString('token');
  }
}

initialServices() async {
  await Get.putAsync(() => MyService().init());
}

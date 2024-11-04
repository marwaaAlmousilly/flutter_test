import 'dart:async';

class ConstData{
  static bool islogin=false;
  static String token="*";
  static Future <void> UpdateToken ()async {
  }

  static Future<void> startTokenupdater()async{
    Timer.periodic(Duration (seconds: 20),(Timer){
      UpdateToken();
    });
  }
}

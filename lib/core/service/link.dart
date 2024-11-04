import '../const_data/const_data.dart';

class AppLink {
  //local address
  static String reg = "127.0.0.1";

  //remote address
  static String appRoot = "https://task.focal-x.com";

  static String imageWithRoot = "$appRoot/storage/";

  static String imageWithoutRoot = "$appRoot/";

  static String serverApiRoot = "$appRoot/api";

  static String login = "$serverApiRoot/login";
  static String home = "$serverApiRoot/home";
  static String products = "$serverApiRoot/products";

  Map<String, String> getHeader() {
    Map<String, String> mainHeader = {
      'content-type': 'application/json',
      'Accept': 'application/json',
      'x-request-with': 'xMlHttpRequest',
    };
    return mainHeader;
  }

  Map<String, String> getHeaderToken() {
    Map<String, String> mainHeader = {
      'content-type': 'application/json',
      'Accept': 'application/json',
      'x-request-with': 'xMlHttpRequest',
      'Authorization': 'Bearer ${ConstData.token}'
    };
    return mainHeader;
  }
}

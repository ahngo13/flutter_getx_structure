import 'package:dhlotto/controllers/home_controller.dart';
import 'package:dhlotto/services/api_service.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(apiService: Get.find()));
    Get.lazyPut<ApiService>(() => ApiService());
  }
}
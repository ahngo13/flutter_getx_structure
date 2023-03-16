import 'package:dhlotto/models/post_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  late PostModel post;

  @override
  void onInit() {
    super.onInit();
    post = Get.arguments as PostModel;
  }
}
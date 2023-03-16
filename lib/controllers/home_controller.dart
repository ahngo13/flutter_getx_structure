import 'package:dhlotto/models/post_model.dart';
import 'package:dhlotto/services/api_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiService apiService;

  HomeController({required this.apiService});

  RxList<PostModel> posts = RxList<PostModel>([]);

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    try {
      var response = await apiService.getPosts();
      posts.value = List<PostModel>.from(response.data).obs;
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch posts');
    }
  }
}
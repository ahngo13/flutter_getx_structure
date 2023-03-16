import 'package:dhlotto/controllers/home_controller.dart';
import 'package:dhlotto/views/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Example'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.posts[index].title),
                subtitle: Text(controller.posts[index].body),
                onTap: () {
                  Get.to(() => DetailView(post: controller.posts[index]));
                },
              );
            },
          )),
    );
  }
}
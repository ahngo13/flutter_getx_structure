import 'package:dhlotto/controllers/detail_controller.dart';
import 'package:dhlotto/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends GetView<DetailController> {
  final PostModel post;

  DetailView({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(post.title),
            SizedBox(height: 16),
            Text(post.body),
          ],
        ),
      ),
    );
  }
}
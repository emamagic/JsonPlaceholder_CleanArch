import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_placeholder/core/routes/app_routes.dart';
import 'package:json_placeholder/modules/posts/domain/entities/posts_entity.dart';
import 'package:json_placeholder/modules/posts/presentation/controller/posts_controller.dart';

class PostsScreen extends GetView<PostsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SafeArea(
            child: Container(
              child: ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (context, index) {
                    PostsEntity post = controller.posts[index];
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                              Get.toNamed(AppRoutes.POST, arguments: post.id);
                          },
                          child: ListTile(
                            title: Text("${post.title}"),
                            subtitle: Text("${post.body}"),
                          ),
                        ),
                        Divider(color: Colors.blue)
                      ],
                    );
                  }),
            ),
          )),
    );
  }
}

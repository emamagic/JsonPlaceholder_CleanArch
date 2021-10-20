import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:json_placeholder/modules/post/domain/entities/comment_entity.dart';
import 'package:json_placeholder/modules/post/domain/entities/post_entity.dart';
import 'package:json_placeholder/modules/post/presentation/controller/post_controller.dart';

class PostScreen extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Post"),
              SizedBox(height: 50),
              ListTile(
                title: Text("${controller.post.value.title}"),
                subtitle: Text("${controller.post.value.body}"),
              ),
              Divider(color: Colors.blue),
              SizedBox(height: 50),
              Text("Comments"),
              SizedBox(height: 50),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.comments.length,
                  itemBuilder: (context, index) {
                    CommentEntity comment = controller.comments[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text("${comment.name}"),
                          subtitle: Text("${comment.body}"),
                        ),
                        Divider(color: Colors.blue),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:json_placeholder/core/exceptions/network_exceptions.dart';
import 'package:json_placeholder/modules/post/domain/entities/post_entity.dart';
import 'package:json_placeholder/modules/post/domain/usecase/comment_usercase.dart';
import 'package:json_placeholder/modules/post/domain/usecase/post_usecase.dart';
import 'package:get/get.dart';


class PostController extends GetxController {

  PostUseCase postUseCase;
  CommentUseCase commentUseCase;

  PostController({required this.postUseCase, required this.commentUseCase});

  var post = PostEntity().obs;
  var comments = [].obs;

  void getPost(int postId) async {
    final map = <String, int>{};
    map['postId'] = postId;
    var response = await postUseCase(map);
    response.when(success: (post) {
      this.post.value = post;
    }, failure: (error) {
      String errorMessage = NetworkExceptions.getErrorMessage(error);
      print("Error $errorMessage");
    });
  }

  void getComments(int postId) async {
    final map = <String, int>{};
    map['postId'] = postId;
    var response = await commentUseCase(map);
    response.when(success: (comments) {
      this.comments.value = comments;
    }, failure: (error) {
      String errorMessage = NetworkExceptions.getErrorMessage(error);
      print("Error $errorMessage");
    });
  }

  @override
  void onInit() {
    int postId = Get.arguments;
    getPost(postId);
    getComments(postId);
    super.onInit();
  }

}
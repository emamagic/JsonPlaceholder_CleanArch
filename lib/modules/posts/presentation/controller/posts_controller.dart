import 'package:get/get.dart';
import 'package:json_placeholder/core/exceptions/network_exceptions.dart';
import 'package:json_placeholder/modules/posts/domain/usecases/posts_usecase.dart';

class PostsController extends GetxController {
  PostsUseCase postsUseCase;

  PostsController({required this.postsUseCase});

  var posts = [].obs;

  void getPosts() async {
    var response = await postsUseCase(null);
    response.when(success: (posts) {
      this.posts.value = posts;
    }, failure: (error) {
      String errorMessage = NetworkExceptions.getErrorMessage(error);
      print("Error $errorMessage");
    });
  }

  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

}

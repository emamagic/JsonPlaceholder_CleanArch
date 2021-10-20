import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:json_placeholder/modules/post/data/datasource/post_datasource.dart';
import 'package:json_placeholder/modules/post/data/repositories/post_repository_impl.dart';
import 'package:json_placeholder/modules/post/domain/usecase/comment_usercase.dart';
import 'package:json_placeholder/modules/post/domain/usecase/post_usecase.dart';
import 'package:json_placeholder/modules/post/presentation/controller/post_controller.dart';

class PostBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => PostDatasourceImpl());
    Get.lazyPut(() => PostRepositoryImpl(postDatasource: Get.find<PostDatasourceImpl>()));
    Get.lazyPut(() => PostUseCase(repository: Get.find<PostRepositoryImpl>()));
    Get.lazyPut(() => CommentUseCase(repository: Get.find<PostRepositoryImpl>()));
    Get.lazyPut(() => PostController(postUseCase: Get.find<PostUseCase>(), commentUseCase: Get.find<CommentUseCase>()));
  }

}
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:json_placeholder/modules/posts/data/datasources/posts_datasource.dart';
import 'package:json_placeholder/modules/posts/data/repositories/posts_repository_impl.dart';
import 'package:json_placeholder/modules/posts/domain/usecases/posts_usecase.dart';
import 'package:json_placeholder/modules/posts/presentation/controller/posts_controller.dart';

class PostsBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => PostsDatasourceImpl());
    Get.lazyPut(() => PostsRepositoryImpl(postsDatasource: Get.find<PostsDatasourceImpl>()));
    Get.lazyPut(() => PostsUseCase(repository: Get.find<PostsRepositoryImpl>()));
    Get.lazyPut(() => PostsController(postsUseCase: Get.find<PostsUseCase>()));
  }

}
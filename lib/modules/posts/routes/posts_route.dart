import 'package:get/get.dart';
import 'package:json_placeholder/core/routes/app_routes.dart';
import 'package:json_placeholder/modules/posts/bindings/posts_binding.dart';
import 'package:json_placeholder/modules/posts/presentation/page/posts_screen.dart';

List<GetPage> postsRoute = [
  GetPage(name: AppRoutes.POSTS, page: () => PostsScreen(), binding: PostsBinding()),
];
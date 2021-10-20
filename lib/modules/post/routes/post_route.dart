import 'package:get/get.dart';
import 'package:json_placeholder/core/routes/app_routes.dart';
import 'package:json_placeholder/modules/post/binding/post_binding.dart';
import 'package:json_placeholder/modules/post/presentation/page/post_screen.dart';

List<GetPage> postRoute = [
  GetPage(name: AppRoutes.POST, page: () => PostScreen(), binding: PostBinding())
];
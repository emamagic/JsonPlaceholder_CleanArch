import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_placeholder/core/routes/app_pages.dart';
import 'package:json_placeholder/core/routes/app_routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "json placeholder",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.POSTS,
    );
  }

}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tutorial/controllers/theme_controller.dart';
import 'package:getx_tutorial/routes.dart';
import 'package:getx_tutorial/screens/home_screen.dart';
import 'package:getx_tutorial/store_binding.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Store',
      initialBinding: StoreBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: themeController.theme,
      initialRoute: RouterHelper.home,
      getPages: RouterHelper.routes,
      home: const HomeScreen(),
    );
  }
}

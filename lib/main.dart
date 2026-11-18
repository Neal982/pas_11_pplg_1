import 'package:flutter/material.dart';
//import 'package:flutter_application_4/Pages/calculator_page.dart';
//import 'package:flutter_application_4/Pages/login_clone_page.dart';
import 'package:get/get.dart';
import 'package:pas_11_pplg_1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My App",

      initialRoute: Routes.login,
      getPages: Routes.pages,
    );
  }
}

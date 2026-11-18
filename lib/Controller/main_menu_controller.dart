import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_11_pplg_1/menu/feat.dart';
import 'package:pas_11_pplg_1/menu/home.dart';
import 'package:pas_11_pplg_1/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages= [
    HomePage(),FeatPage(),ProfilePage(),
  ];

}

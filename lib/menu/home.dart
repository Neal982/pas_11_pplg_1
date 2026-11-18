import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_11_pplg_1/Controller/feat_controller.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(FeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SizedBox(
        height: 100,
      child: Column(
        children: [
          SizedBox(height: 50,),
          Center(child: CircularProgressIndicator())
        ],
      ),
      ),
    );
  }
}

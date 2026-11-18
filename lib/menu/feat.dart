import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_11_pplg_1/Controller/feat_controller.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(FeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feat')),
       body: Column(
        children: [
          SizedBox(height: 50,),
          Center(child: CircularProgressIndicator())
        ],
       )
    );
  }
}

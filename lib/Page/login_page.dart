import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_11_pplg_1/Component/custom_button.dart';
import 'package:pas_11_pplg_1/Component/custom_text.dart';
import 'package:pas_11_pplg_1/Component/custom_textfield.dart';
import 'package:pas_11_pplg_1/Controller/login_controller.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          CustomText("Login Page", textColor: Colors.black, fontSize: 24),
          const SizedBox(height: 40),
          CustomTextfield(
            Colors.black,
            txtController: controller.txtUsername,
            hint: "Username",
          ),
          const SizedBox(height: 20),
          CustomTextfield(
            Colors.black,
            txtController: controller.txtPassword,
            hint: "Password",
          ),
          const SizedBox(height: 20),
          Obx(
            () => controller.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : CustomButton(
                    "Login",
                    const Color.fromARGB(255, 132, 0, 255),
                    onPressed: () {
                      controller.login();
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_11_pplg_1/Model/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:pas_11_pplg_1/Page/main_menu_page.dart';

class LoginCloneController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var loginModel = Rxn<LoginModel>();
  var isLoading = false.obs;
  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username and password must be filled");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");
        
        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        if (response.statusCode == 200) {
         
          loginModel.value = loginModelFromJson(response.body);

          if (loginModel.value?.status == true) {
            Get.off(() =>  MainMenuPage());
          } else {
            Get.snackbar("Failed", loginModel.value!.message.toString());
          }
        } else {
          Get.snackbar("Failed", "Check Internet Connection");
        }
      } catch (e) {
        Get.snackbar("Failed", e.toString());
        debugPrint("Login request failed: $e");
      } finally {
        isLoading.value = false;
      }
    }
  }
}

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pas_11_pplg_1/Page/login_page.dart';
import 'package:pas_11_pplg_1/Page/main_menu_page.dart';

class Routes {
  static const String login = "/login";
  static const String mainmenu = "/mainmenupage";

  static final pages = [
    GetPage(name: login, page: () => Loginpage()),
    GetPage(name: mainmenu, page: () => MainMenuPage()),
  ];
}

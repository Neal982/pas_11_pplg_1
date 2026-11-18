import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_11_pplg_1/Model/team_model.dart';


class FeatController extends GetxController {
  final Rxn<Team> teamModel = Rxn<Team>();
  final isLoading = false.obs;
  final errorMessage = Rxn<String>();

  @override
  void onInit() {
    super.onInit();
    fetchTeams();
  }

  Future<void> fetchTeams() async {
    isLoading.value = true;
    errorMessage.value = null;

    try {
      final url = Uri.parse(
        'https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php? l=English%20Premier%20League',
      );
      final response = await http.get(url);

      if (response.statusCode != 200) {
        errorMessage.value = 'Request failed (${response.statusCode})';
        return;
      }

      teamModel.value = premierLeagueModelFromJson(response.body) as Team? ;
    } catch (error) {
      errorMessage.value = 'Could not load Teams: $error';
    } finally {
      isLoading.value = false;
    }
  }
}

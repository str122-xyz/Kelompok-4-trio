import 'package:flutter/widgets.dart';
import 'package:kelompok4_app_mobile/screens/team/felan_profile.dart';

class MyTeam {
  String nama;
  String pathPhoto;
  String route;

  MyTeam({
    required this.nama,
    required this.pathPhoto,
    required this.route,
  });

  static List<MyTeam> getTeams() {
    List<MyTeam> teams = [];

    teams.add(
      MyTeam(
        nama: 'Felan Ardenta Yoga', 
        pathPhoto: 'assets\images\felan_profile.jpeg', 
        route: FelanProfile.routeName,
      )
    );
  }

}
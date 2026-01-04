import 'package:flutter/widgets.dart';

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

  }

}
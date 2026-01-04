import 'package:flutter/material.dart';
import 'package:kelompok4_app_mobile/models/team_models.dart';

class ProfileTeam extends StatefulWidget {
  const ProfileTeam({super.key});

  @override
  State<ProfileTeam> createState() => _ProfileTeamState();
}

class _ProfileTeamState extends State<ProfileTeam> {
  @override
  Widget build(BuildContext context) {
    final teams = MyTeam.getTeams();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 8, left: 8),
        child: ListView.separated(
          itemCount: teams.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) {
            final team = teams[index];

            return ListTile(
            )
          },
        ),
      )
    );
  }
}
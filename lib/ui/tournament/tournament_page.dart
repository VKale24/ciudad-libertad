import 'package:flutter/material.dart';

import 'package:apk_cl/ui/tournament/widgets/tournament_card.dart';

class TournamentPage extends StatelessWidget {
  const TournamentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          TournamentCard(),
          TournamentCard(),
          TournamentCard(),
          TournamentCard(),
          TournamentCard(),
          TournamentCard(),
        ],
      ),
    );
  }
}

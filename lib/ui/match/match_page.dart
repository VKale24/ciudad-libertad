import 'package:flutter/material.dart';

import 'package:apk_cl/ui/match/widget/match_card.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          MatchCard(team1: 'Calvario', team2: 'Castilla', hora: '3:00pm'),
          MatchCard(
              team1: 'Contabilidad UH', team2: 'Economía UH', hora: '3:00pm'),
          MatchCard(team1: 'Almendares', team2: 'FS 72', hora: '4:00pm'),
          MatchCard(team1: 'Altahabana', team2: 'Proyecto C-8', hora: '4:00pm'),
          MatchCard(team1: 'Juventud FC', team2: 'Wakanda', hora: '5:00pm'),
          MatchCard(team1: 'Bolivia', team2: 'Carine', hora: '6:00pm'),
          MatchCard(team1: 'Toledo', team2: 'La Aldea', hora: '6:00pm'),
          MatchCard(team1: 'Sporting 250', team2: 'Ajax Playa', hora: '7:00pm'),
        ],
      ),
    );
  }
}

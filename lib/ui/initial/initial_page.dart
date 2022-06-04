import 'package:flutter/material.dart';
import 'package:apk_cl/ui/home/home.dart';

import 'package:apk_cl/ui/common/color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:apk_cl/ui/match/match_page.dart';
import 'package:apk_cl/ui/profile/profile_page.dart';
import 'package:apk_cl/ui/common/bottom_nav_bar.dart';
import 'package:apk_cl/ui/tournament/tournament_page.dart';
import 'package:apk_cl/ui/favorite_team/favorite_team_page.dart';
import 'package:apk_cl/domain/bloc/category_nav_bar/category_navbar_bloc.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNavbarBloc, CategoryNavbarState>(
        builder: (context, state) {
      return Scaffold(
        backgroundColor: ColorApp.colorBlackFont,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: ColorApp.colorBlack,
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      color: ColorApp.colorBlack,
                      child: Center(
                        child: Text(
                            state is HomeCategory
                                ? "MBS"
                                : state is MatchCategory
                                    ? "Partidos"
                                    : state is TournamentCategory
                                        ? "Torneos"
                                        : state is FavoriteTeamCategory
                                            ? "Mi Equipo"
                                            : "Mi Perfil",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    state is ProfileCategory
                        ? GestureDetector(
                            child: const SizedBox(
                                height: 100,
                                width: 100,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                )),
                            onTap: () {},
                          )
                        : GestureDetector(
                            child: const SizedBox(
                                height: 100,
                                width: 100,
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                )),
                            onTap: () {},
                          )
                    /*GestureDetector(
                      child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Switch(
                            value: isSelected,
                            onChanged: _onChanged,
                            activeColor: Colors.amber,
                          )),
                      onTap: () {
                        isSelected
                            ? BlocProvider.of<ThemeBloc>(context)
                                .add(const SelectThemeLight())
                            : BlocProvider.of<ThemeBloc>(context)
                                .add(const SelectThemeDark());
                      },
                    )*/
                  ],
                ),
              ),
              state is HomeCategory
                  ? const HomePage()
                  : state is MatchCategory
                      ? const MatchPage()
                      : state is TournamentCategory
                          ? const TournamentPage()
                          : state is FavoriteTeamCategory
                              ? const FavoriteTeamPage()
                              : const ProfilePage(),
              const BottomNavBar()
            ],
          ),
        ),
      );
    });
  }
}

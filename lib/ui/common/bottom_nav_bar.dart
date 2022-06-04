import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:apk_cl/ui/common/color.dart';
import 'package:apk_cl/domain/bloc/category_nav_bar/category_navbar_bloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    BlocProvider.of<CategoryNavbarBloc>(context).add(const SelectHome());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNavbarBloc, CategoryNavbarState>(
        builder: (context, state) {
      return Container(
        height: 55,
        width: double.infinity,
        color: ColorApp.colorBlack,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: bottomNavBarItem(
                  icon: Icons.home, isSelected: state is HomeCategory),
              onTap: () {
                BlocProvider.of<CategoryNavbarBloc>(context)
                    .add(const SelectHome());
              },
            ),
            GestureDetector(
              child: bottomNavBarItem(
                  icon: Icons.calendar_month,
                  isSelected: state is MatchCategory),
              onTap: () {
                BlocProvider.of<CategoryNavbarBloc>(context)
                    .add(const SelectMatch());
              },
            ),
            GestureDetector(
              child: bottomNavBarItem(
                  icon: Icons.military_tech,
                  isSelected: state is FavoriteTeamCategory),
              onTap: () {
                BlocProvider.of<CategoryNavbarBloc>(context)
                    .add(const SelectFavoriteTeam());
              },
            ),
            GestureDetector(
              child: bottomNavBarItem(
                  icon: Icons.local_fire_department_sharp,
                  isSelected: state is TournamentCategory),
              onTap: () {
                BlocProvider.of<CategoryNavbarBloc>(context)
                    .add(const SelectTournament());
              },
            ),
            GestureDetector(
              child: bottomNavBarItem(
                  icon: Icons.person, isSelected: state is ProfileCategory),
              onTap: () {
                BlocProvider.of<CategoryNavbarBloc>(context)
                    .add(const SelectProfile());
              },
            ),
          ],
        ),
      );
    });
  }

  Widget bottomNavBarItem({required dynamic icon, required bool isSelected}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 30,
        width: 30,
        child: Icon(
          icon,
          color: isSelected ? ColorApp.kPrimaryColor : Colors.grey,
          size: 32,
        ),
      ),
    );
  }
}

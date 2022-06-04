part of 'category_navbar_bloc.dart';

@immutable
abstract class CategoryNavbarState {
  const CategoryNavbarState();
  List<Object?> get props => [];
}

class CategoryNavbarInitial extends CategoryNavbarState {
  const CategoryNavbarInitial();
}

class HomeCategory extends CategoryNavbarState {
  const HomeCategory();
}

class MatchCategory extends CategoryNavbarState {
  const MatchCategory();
}

class FavoriteTeamCategory extends CategoryNavbarState {
  const FavoriteTeamCategory();
}

class TournamentCategory extends CategoryNavbarState {
  const TournamentCategory();
}

class ProfileCategory extends CategoryNavbarState {
  const ProfileCategory();
}

part of 'category_navbar_bloc.dart';

@immutable
abstract class CategoryNavbarEvent {
  const CategoryNavbarEvent();

  List<Object?> get props => [];
}

class SelectHome extends CategoryNavbarEvent {
  const SelectHome();
}

class SelectMatch extends CategoryNavbarEvent {
  const SelectMatch();
}

class SelectFavoriteTeam extends CategoryNavbarEvent {
  const SelectFavoriteTeam();
}

class SelectTournament extends CategoryNavbarEvent {
  const SelectTournament();
}

class SelectProfile extends CategoryNavbarEvent {
  const SelectProfile();
}

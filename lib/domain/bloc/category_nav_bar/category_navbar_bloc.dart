import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_navbar_event.dart';
part 'category_navbar_state.dart';

class CategoryNavbarBloc
    extends Bloc<CategoryNavbarEvent, CategoryNavbarState> {
  CategoryNavbarBloc() : super(const CategoryNavbarInitial()) {
    on<SelectHome>(_onSelectHomeState);
    on<SelectMatch>(_onSelectMatchState);
    on<SelectProfile>(_onSelectOptionsState);
    on<SelectTournament>(_onSelectTournamentState);
    on<SelectFavoriteTeam>(_onSelectFavoriteTeamState);
  }

  void _onSelectHomeState(
    SelectHome event,
    Emitter<CategoryNavbarState> emit,
  ) {
    emit(const HomeCategory());
  }

  void _onSelectMatchState(
    SelectMatch event,
    Emitter<CategoryNavbarState> emit,
  ) {
    emit(const MatchCategory());
  }

  void _onSelectFavoriteTeamState(
    SelectFavoriteTeam event,
    Emitter<CategoryNavbarState> emit,
  ) {
    emit(const FavoriteTeamCategory());
  }

  void _onSelectTournamentState(
    SelectTournament event,
    Emitter<CategoryNavbarState> emit,
  ) {
    emit(const TournamentCategory());
  }

  void _onSelectOptionsState(
    SelectProfile event,
    Emitter<CategoryNavbarState> emit,
  ) {
    emit(const ProfileCategory());
  }
}

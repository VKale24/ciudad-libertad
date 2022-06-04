import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitial()) {
    on<SelectThemeDark>(_onSelectDarkState);
    on<SelectThemeLight>(_onSelectLightState);
  }

  void _onSelectDarkState(
    SelectThemeDark event,
    Emitter<ThemeState> emit,
  ) {
    emit(const ThemeDark());
  }

  void _onSelectLightState(
    SelectThemeLight event,
    Emitter<ThemeState> emit,
  ) {
    emit(const ThemeLight());
  }
}

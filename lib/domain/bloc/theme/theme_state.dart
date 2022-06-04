part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {
  const ThemeState();

  List<Object?> get props => [];
}

class ThemeInitial extends ThemeState {
  const ThemeInitial();
}

class ThemeDark extends ThemeState {
  const ThemeDark();
}

class ThemeLight extends ThemeState {
  const ThemeLight();
}

part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {
  const ThemeEvent();

  List<Object?> get props => [];
}

class SelectThemeDark extends ThemeEvent {
  const SelectThemeDark();
}

class SelectThemeLight extends ThemeEvent {
  const SelectThemeLight();
}

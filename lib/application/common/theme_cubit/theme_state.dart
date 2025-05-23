part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;

  const factory ThemeState.theme(ThemeType theme) = _Theme;
}

part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent extends Equatable {}

class ThemeChangeEvent extends ThemeEvent {
  ThemeChangeEvent({required this.themeType}) : super() {
    PrefUtils().setThemeData(themeType);
  }

  final String themeType;

  @override
  List<Object?> get props => [];
}

import 'package:clima/core/either.dart';
import 'package:clima/core/failure.dart';
import 'package:clima/data/data_sources/theme_local_data_source.dart';
import 'package:clima/data/models/dark_theme_model.dart';
import 'package:clima/data/models/theme_model.dart';
import 'package:riverpod/riverpod.dart';

class ThemeRepo {
  const ThemeRepo({required this.localDataSource});

  final ThemeLocalDataSource localDataSource;

  Future<Either<Failure, ThemeModel>> getTheme() async =>
      (await localDataSource.getTheme())
          .map((theme) => theme ?? ThemeModel.systemDefault);

  Future<Either<Failure, void>> setTheme(ThemeModel theme) =>
      localDataSource.setTheme(theme);

  Future<Either<Failure, DarkThemeModel>> getDarkTheme() async =>
      (await localDataSource.getDarkTheme())
          .map((theme) => theme ?? DarkThemeModel.darkGrey);

  Future<Either<Failure, void>> setDarkTheme(DarkThemeModel theme) =>
      localDataSource.setDarkTheme(theme);
}

final themeRepoProvider = Provider(
  (ref) => ThemeRepo(localDataSource: ref.watch(themeLocalDataSourceProvider)),
);

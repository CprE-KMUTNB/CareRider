import 'package:clima/core/either.dart';
import 'package:clima/core/failure.dart';
import 'package:clima/domain/entities/city.dart';
import 'package:clima/domain/entities/full_weather.dart';
import 'package:riverpod/riverpod.dart';

abstract class FullWeatherRepo {
  Future<Either<Failure, FullWeather>> getFullWeather(City city);
}

final fullWeatherRepoProvider =
    Provider<FullWeatherRepo>((ref) => throw UnimplementedError());

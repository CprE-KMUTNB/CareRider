import 'package:clima/core/either.dart';
import 'package:clima/core/failure.dart';
import 'package:clima/core/use_case.dart';
import 'package:clima/domain/entities/unit_system.dart';
import 'package:clima/domain/repos/unit_system_repo.dart';
import 'package:riverpod/riverpod.dart';

class GetUnitSystem implements UseCase<UnitSystem, NoParams> {
  const GetUnitSystem(this.repo);

  final UnitSystemRepo repo;

  @override
  Future<Either<Failure, UnitSystem>> call(NoParams params) =>
      repo.getUnitSystem();
}

final getUnitSystemProvider =
    Provider((ref) => GetUnitSystem(ref.watch(unitSystemRepoProvider)));

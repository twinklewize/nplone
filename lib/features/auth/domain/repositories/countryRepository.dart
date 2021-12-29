import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';

abstract class CountryRepository {
  Future<Either<Failure, List<CountryEntity>>> getAllCountries();
}

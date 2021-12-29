import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/core/platform/network_info.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:n_plus_one/features/auth/domain/repositories/countryRepository.dart';

import '../datasources/country_remote_datasource.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CountryRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CountryEntity>>> getAllCountries() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCountry = await remoteDataSource.getAllCountries();
        return Right(remoteCountry);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }
}

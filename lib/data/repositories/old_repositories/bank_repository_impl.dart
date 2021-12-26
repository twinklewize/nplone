import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/core/platform/network_info.dart';
import 'package:n_plus_one/data/datasources/old_datasources/bank_remote_datasource.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_entity.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:n_plus_one/domain/repositories/old_repositories/bank_repository.dart';

class BankRepositoryImpl implements BankRepository {
  final BankRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  BankRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<BankEntity>>> getAllBanks() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteBank = await remoteDataSource.getAllBanks();
        return Right(remoteBank);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}

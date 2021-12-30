import 'package:n_plus_one/core/error_and_success/exception.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/platform/network_info.dart';
import 'package:n_plus_one/features/bank_account_adding/data/datasources/bank_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:n_plus_one/features/bank_account_adding/domain/repositories/bank_repository.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';

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

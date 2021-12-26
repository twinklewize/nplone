import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/platform/network_info.dart';
import 'package:n_plus_one/data/datasources/old_datasources/bank_accounts_local_datasource.dart';
import 'package:n_plus_one/data/datasources/old_datasources/bank_accounts_remote_datasource.dart';
import 'package:n_plus_one/data/models/old_models/bank_account_model.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/repositories/old_repositories/bank_accounts_repository.dart';

class BankAccountsRepositoryImpl implements BankAccountsRepository {
  final BankAccountsRemoteDataSource remoteDataSource;
  final BankAccountsLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  BankAccountsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<BankAccountEntity>>> getBankAccounts(
      String userId) async {
    return await _getBankAccouts(() {
      return remoteDataSource.getBankAccouts(userId);
    });
  }

  Future<Either<Failure, List<BankAccountModel>>> _getBankAccouts(
      Future<List<BankAccountModel>> Function() getBankAccounts) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteBankAccounts = await getBankAccounts();
        await localDataSource.bankAccountsToCache(remoteBankAccounts);
        return Right(remoteBankAccounts);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localBankAccounts =
            await localDataSource.getLastBankAccountsFromCache();
        return Right(localBankAccounts);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}

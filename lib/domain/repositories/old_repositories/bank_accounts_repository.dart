import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_account_entity.dart';

abstract class BankAccountsRepository {
  /// Метод для получения списка всех банковских аккаунтов для данного пользователя
  Future<Either<Failure, List<BankAccountEntity>>> getBankAccounts(
      String userId);
}

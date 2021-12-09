import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/repositories/bank_accounts_repository.dart';

class LoadUserBankAccounts
    extends UseCase<List<BankAccountEntity>, LoadBankAccoutsParams> {
  final BankAccountsRepository bankAccountsRepository;

  LoadUserBankAccounts(this.bankAccountsRepository);

  @override
  Future<Either<Failure, List<BankAccountEntity>>> call(
      LoadBankAccoutsParams params) async {
    return await bankAccountsRepository.getBankAccouts(params.userId);
  }
}

class LoadBankAccoutsParams extends Equatable {
  final String userId;

  const LoadBankAccoutsParams({required this.userId});

  @override
  List<Object> get props => [userId];
}

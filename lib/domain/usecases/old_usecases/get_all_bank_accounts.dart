import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/repositories/old_repositories/bank_accounts_repository.dart';

class LoadUserBankAccounts
    extends UseCase<List<BankAccountEntity>, LoadBankAccountsParams> {
  final BankAccountsRepository bankAccountsRepository;

  LoadUserBankAccounts(this.bankAccountsRepository);

  @override
  Future<Either<Failure, List<BankAccountEntity>>> call(
      LoadBankAccountsParams params) async {
    final response =
        await bankAccountsRepository.getBankAccounts(params.userId);
    // print(response.fold(
    //     (l) => l.toString(), (r) => r.first.howMuchMoneyInDollars));
    return response;
  }
}

class LoadBankAccountsParams extends Equatable {
  final String userId;

  const LoadBankAccountsParams({required this.userId});

  @override
  List<Object> get props => [userId];
}

import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/features/bank_account_adding/domain/repositories/bank_repository.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';

class GetAllBanks extends UseCase<List<BankEntity>, NoParams> {
  final BankRepository bankRepository;

  GetAllBanks(this.bankRepository);

  @override
  Future<Either<Failure, List<BankEntity>>> call(NoParams params) async {
    return await bankRepository.getAllBanks();
  }
}

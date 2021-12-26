import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_entity.dart';
import 'package:n_plus_one/domain/repositories/old_repositories/bank_repository.dart';

class GetAllBanks extends UseCase<List<BankEntity>, NoParams> {
  final BankRepository bankRepository;

  GetAllBanks(this.bankRepository);

  @override
  Future<Either<Failure, List<BankEntity>>> call(NoParams params) async {
    return await bankRepository.getAllBanks();
  }
}

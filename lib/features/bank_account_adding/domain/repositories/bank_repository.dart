import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';

abstract class BankRepository {
  Future<Either<Failure, List<BankEntity>>> getAllBanks();
}

import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';

abstract class BankRepository {
  Future<Either<Failure, List<BankEntity>>> getAllBanks();
}

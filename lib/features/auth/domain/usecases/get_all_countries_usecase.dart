import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/features/auth/domain/repositories/countryRepository.dart';

class GetAllCountries extends UseCase<List<CountryEntity>, NoParams> {
  final CountryRepository countryRepository;

  GetAllCountries(this.countryRepository);

  @override
  Future<Either<Failure, List<CountryEntity>>> call(NoParams params) async {
    return await countryRepository.getAllCountries();
  }
}

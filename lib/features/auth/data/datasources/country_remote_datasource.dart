import '../models/country_model.dart';

abstract class CountryRemoteDataSource {
  Future<List<CountryModel>> getAllCountries();
}

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  CountryRemoteDataSourceImpl();

  @override
  Future<List<CountryModel>> getAllCountries() async {
    return [
      CountryModel(
        imageUrl: '',
        countryCode: 'countryCode',
        countryName: 'countryName',
      ),
      CountryModel(
        imageUrl: 'imageUrl',
        countryCode: 'countryCode',
        countryName: 'countryName',
      ),
    ];
  }
}

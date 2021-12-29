import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';

class CountryModel extends CountryEntity {
  // late final Country country;

  CountryModel({
    required imageUrl,
    required countryCode,
    required countryName,
  }) : super(
          imageUrl: imageUrl,
          countryCode: countryCode,
          countryName: countryName,
        ) {
    // country = Country((CountryBuilder countryBuilder) {
    //   countryBuilder.imageUrl = imageUrl;
    //   countryBuilder.countryCode = countryCode;
    //   countryBuilder.countryName = countryName;
    // });
  }

  // CountryModel.fromCountry({
  //   required this.country,
  // }) : super(
  //         imageUrl: country.imageUrl,
  //         countryCode: country.countryCode,
  //         countryName: country.countryName,
  //       );
}

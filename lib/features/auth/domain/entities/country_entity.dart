import 'package:equatable/equatable.dart';

class CountryEntity extends Equatable {
  CountryEntity({
    required this.countryName,
    required this.countryCode,
    required this.imageUrl,
  });

  /// Название страны на английском языке
  final String countryName;

  /// Код страны в ISO 3166 alpha-2
  final String countryCode;

  /// URL изображения флага
  final String imageUrl;

  @override
  List<Object?> get props => [countryName, countryCode, imageUrl];
}

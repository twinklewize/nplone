import 'package:equatable/equatable.dart';

class CountryEntity extends Equatable {
  CountryEntity({
    required this.countryName,
    required this.countryCode,
    required this.flagEmoji,
  });

  /// Название страны на английском языке
  final String countryName;

  /// Код страны в ISO 3166 alpha-2
  final String countryCode;

  /// Emoji изображения флага
  final String flagEmoji;

  @override
  List<Object?> get props => [countryName, countryCode, flagEmoji];
}

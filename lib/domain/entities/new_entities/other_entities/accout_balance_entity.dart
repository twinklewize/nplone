import 'package:equatable/equatable.dart';

class AccountBalanceEntity extends Equatable {
  // Код валюты
  final String currencyCode;

  // Размерность значения
  final int scale;

  // Безразмерное значение баланса
  final int unscaledValue;

  AccountBalanceEntity({
    required this.currencyCode,
    required this.scale,
    required this.unscaledValue,
  });

  @override
  List<Object?> get props => [currencyCode, scale, unscaledValue];
}

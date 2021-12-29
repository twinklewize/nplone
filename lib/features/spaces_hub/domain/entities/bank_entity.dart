import 'package:equatable/equatable.dart';

class BankEntity extends Equatable {
  /// Name of the bank. Tinkoff, for example
  final String name;

  /// Bank's avatar
  final String imageUrl;

  BankEntity({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];
}

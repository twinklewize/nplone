import 'package:equatable/equatable.dart';

class BankEntity extends Equatable {
  /// Name of the bank. Tinkoff, for example
  final String name;

  /// Bank's avatar
  final String imageURL;

  BankEntity({
    required this.name,
    required this.imageURL,
  });

  @override
  List<Object?> get props => [name, imageURL];
}

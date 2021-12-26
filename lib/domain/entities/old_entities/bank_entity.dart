import 'package:equatable/equatable.dart';

class BankEntity extends Equatable {
  /// Name of the bank. Tinkoff, for example
  String name;

  /// Bank's avatar
  String imageUrl;

  BankEntity({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];
}

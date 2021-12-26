import 'package:equatable/equatable.dart';

class AccountConnectionInitiationDto extends Equatable {
  /// URI для начала добавления счёта
  final String redirectUri;

  AccountConnectionInitiationDto({
    this.redirectUri = '',
  });

  @override
  List<Object?> get props => [redirectUri];
}

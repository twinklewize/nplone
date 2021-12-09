import 'package:equatable/equatable.dart';

abstract class BankListEvent extends Equatable {
  const BankListEvent();

  @override
  List<Object> get props => [];
}

class BankListSearhEvent extends BankListEvent {
  final String bankQuery;

  BankListSearhEvent(this.bankQuery);
}

class BankListLoadEvent extends BankListEvent {}

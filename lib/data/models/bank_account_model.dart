import 'package:n_plus_one/data/models/bank_model.dart';
import 'package:n_plus_one/data/models/space_model.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';
import '/domain/entities/bank_account_entity.dart';
import '/domain/entities/space_entity.dart';

class BankAccountModel extends BankAccountEntity {
  BankAccountModel({
    required bank,
    required name,
    required status,
    required spaces,
    required howMuchMoneyInDollars,
  }) : super(
          bank: bank,
          name: name,
          status: status,
          spaces: spaces,
          howMuchMoneyInDollars: howMuchMoneyInDollars,
        );

  factory BankAccountModel.fromJson(Map<String, dynamic> json) {
    return BankAccountModel(
      // TODO исправить метод !!!!!!!!
      name: json['name'] as String,
      bank: BankEntity(name: json['name'], imageURL: json['imageURL']),
      status: json['status'] as String == 'reconnected'
          ? Status.reconnected
          : json['status'] as String == 'isReconnecting'
              ? Status.isReconnecting
              : Status.needReconnect,
      spaces: [
        for (var space in json['spaces'])
          SpaceEntity(
            id: space['id'],
            imageUrl: space['imageUrl'],
            privacy: space['privacy'] as String == 'openPublicSpace'
                ? Privacy.openPublicSpace
                : Privacy.privateSpace,
            howManyPeopleInSpace: space['howManyPeopleInSpace'],
          ),
      ],
      howMuchMoneyInDollars: json['howMuchMoneyInDollars'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'bank': BankModel(name: bank.name, imageUrl: bank.imageURL),
      'status': status.toString(),
      'spaces': [
        for (var space in spaces)
          SpaceModel(
            id: space.id,
            privacy: space.privacy,
            imageUrl: space.imageUrl,
            howManyPeopleInSpace: space.howManyPeopleInSpace,
          ).toJson(),
      ],
      'howMuchMoneyInDollars': howMuchMoneyInDollars,
    };
  }
}

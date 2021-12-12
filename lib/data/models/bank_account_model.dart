import 'package:n_plus_one/data/models/bank_model.dart';
import 'package:n_plus_one/data/models/comment_model.dart';
import 'package:n_plus_one/data/models/contragent_model.dart';
import 'package:n_plus_one/data/models/space_model.dart';
import 'package:n_plus_one/data/models/transaction_model.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';
import 'package:n_plus_one/domain/entities/comment_entity.dart';
import 'package:n_plus_one/domain/entities/contragent_entity.dart';
import 'package:n_plus_one/domain/entities/transaction_entity.dart';
import '/domain/entities/bank_account_entity.dart';
import '/domain/entities/space_entity.dart';

class BankAccountModel extends BankAccountEntity {
  BankAccountModel({
    required bank,
    required name,
    required status,
    required spaces,
    required howMuchMoneyInDollars,
    required transactions,
  }) : super(
          bank: bank,
          name: name,
          status: status,
          spaces: spaces,
          howMuchMoneyInDollars: howMuchMoneyInDollars,
          transactions: transactions,
        );

  factory BankAccountModel.fromJson(Map<String, dynamic> json) {
    return BankAccountModel(
      // TODO исправить метод под реальный API
      name: json['name'] as String,
      bank: BankEntity(
        name: json['bank']['name'],
        imageUrl: json['bank']['imageUrl'],
      ),
      status: json['status'] as String == 'reconnected'
          ? Status.reconnected
          : json['status'] as String == 'isReconnecting'
              ? Status.isReconnecting
              : Status.needReconnect,
      spaces: [
        for (var space in json['spaces'])
          SpaceEntity(
            id: space['id'],
            name: space['name'],
            imageUrl: space['imageUrl'],
            privacy: space['privacy'] as String == 'openPublicSpace'
                ? Privacy.openPublicSpace
                : Privacy.privateSpace,
            howManyPeopleInSpace: space['howManyPeopleInSpace'],
          ),
      ],
      howMuchMoneyInDollars: json['howMuchMoneyInDollars'] as double,
      transactions: [
        for (var transaction in json['transactions'])
          TransactionEntity(
            contragent: ContragentEntity(
              name: transaction['contragent']['name'],
              id: transaction['contragent']['id'],
              bankAccount: BankAccountEntity(
                name: transaction['contragent']['bankAccount']['name'],
                bank: BankEntity(
                  name: transaction['contragent']['bankAccount']['bank']
                      ['name'],
                  imageUrl: transaction['contragent']['bankAccount']['bank']
                      ['imageUrl'],
                ),
                spaces: [],
                howMuchMoneyInDollars: 0,
                transactions: [],
              ),
              imageUrl: transaction['contragent']['imageUrl'],
            ),
            transactionAmountInDollars:
                transaction['transactionAmountInDollars'],
            isPublished: transaction['isPublished'],
            whenItWas: DateTime.parse(transaction['whenItWas']),
            whereItWas: transaction['whereItWas'],
            transactionType: transaction['transactionType'],
            comments: [
              for (var comment in transaction['comments'])
                CommentEntity(
                  text: comment['text'],
                  commentatorId: comment['commentatorId'],
                  whenItWas: DateTime.parse(comment['whenItWas']),
                ),
            ],
          ),
      ],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'bank': BankModel(name: bank.name, imageUrl: bank.imageUrl).toJson(),
      'status': status.toString(),
      'spaces': [
        for (var space in spaces)
          SpaceModel(
            id: space.id,
            name: space.name,
            privacy: space.privacy,
            imageUrl: space.imageUrl,
            howManyPeopleInSpace: space.howManyPeopleInSpace,
          ).toJson(),
      ],
      'howMuchMoneyInDollars': howMuchMoneyInDollars,
      'transactions': [
        for (var transaction in transactions)
          TransactionModel(
            contragent: ContragentModel(
              id: transaction.contragent.id,
              name: transaction.contragent.name,
              bankAccount: BankAccountModel(
                bank: transaction.contragent.bankAccount.bank,
                name: transaction.contragent.bankAccount.name,
                status: transaction.contragent.bankAccount.status,
                spaces: <SpaceEntity>[],
                howMuchMoneyInDollars:
                    transaction.contragent.bankAccount.howMuchMoneyInDollars,
                transactions: <TransactionEntity>[],
              ),
              imageUrl: transaction.contragent.imageUrl,
            ),
            transactionAmountInDollars: transaction.transactionAmountInDollars,
            isPublished: transaction.isPublished,
            whenItWas: transaction.whenItWas,
            whenItWasPublished: transaction.whenItWasPublished,
            whereItWas: transaction.whereItWas,
            transactionType: transaction.transactionType,
            attachmentFiles: transaction.attachmentFiles,
            comments: [
              for (var comment in transaction.comments)
                CommentModel(
                  text: comment.text,
                  commentatorId: comment.commentatorId,
                  whenItWas: comment.whenItWas.toIso8601String(),
                ),
            ],
          ).toJson(),
      ],
    };
  }
}

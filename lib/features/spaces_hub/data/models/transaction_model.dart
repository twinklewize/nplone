import 'package:n_plus_one/features/spaces_hub/data/models/contragent_model.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/comment_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/contragent_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/space_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/transaction_entity.dart';

import 'bank_account_model.dart';
import 'bank_model.dart';
import 'comment_model.dart';

class TransactionModel extends TransactionEntity {
  TransactionModel({
    required contragent,
    required transactionAmountInDollars,
    required isPublished,
    required whenItWas,
    required whenItWasPublished,
    required whereItWas,
    required transactionType,
    required attachmentFiles,
    required comments,
  }) : super(
          contragent: contragent,
          transactionAmountInDollars: transactionAmountInDollars,
          isPublished: isPublished,
          whenItWas: whenItWas,
          whenItWasPublished: whenItWasPublished,
          whereItWas: whereItWas,
          transactionType: transactionType,
          attachmentFiles: attachmentFiles,
          comments: comments,
        );

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      contragent: ContragentEntity(
        name: json['contragent']['name'],
        id: json['contragent']['id'],
        bankAccount: BankAccountEntity(
          name: '',
          bank: BankEntity(
            name: json['contragent']['bankAccount']['bank']['name'],
            imageUrl: json['contragent']['bankAccount']['bank']['imageUrl'],
          ),
          spaces: [],
          howMuchMoneyInDollars: 0,
          transactions: [],
        ),
        imageUrl: json['contragent']['imageUrl'],
      ),
      transactionAmountInDollars: json['transactionAmountInDollars'],
      isPublished: json['transactioisPublishednAmountInDollars'],
      whenItWas: DateTime.parse(json['whenItWas']),
      whenItWasPublished: DateTime.parse(json['whenItWasPublished']),
      whereItWas: json['whereItWas'],
      transactionType: json['transactionType'],
      attachmentFiles: [
        for (var file in json['attachmentFiles'])
          {
            file,
          },
      ],
      comments: [
        for (var comment in json['comments'])
          {
            CommentEntity(
              text: comment['text'],
              commentatorId: comment['commentatorId'],
              whenItWas: DateTime.parse(comment['whenItWas']),
            ),
          }
      ],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'contragent': ContragentModel(
        id: contragent.id,
        name: contragent.name,
        bankAccount: BankAccountModel(
          bank: BankModel(
            name: contragent.bankAccount.bank.name,
            imageUrl: contragent.bankAccount.bank.imageUrl,
          ),
          name: contragent.bankAccount.name,
          status: contragent.bankAccount.status,
          spaces: <SpaceEntity>[],
          howMuchMoneyInDollars: contragent.bankAccount.howMuchMoneyInDollars,
          transactions: <TransactionEntity>[],
        ),
        imageUrl: contragent.imageUrl,
      ).toJson(),
      'transactionAmountInDollars': transactionAmountInDollars,
      'isPublished': isPublished,
      'whenItWas': whenItWas.toIso8601String(),
      'whenItWasPublished': whenItWasPublished?.toIso8601String(),
      'whereItWas': whereItWas,
      'transactionType': transactionType,
      'attachmentFiles': attachmentFiles,
      'comments': [
        for (var comment in comments)
          CommentModel(
            text: comment.text,
            commentatorId: comment.commentatorId,
            whenItWas: comment.whenItWas.toIso8601String(),
          ).toJson(),
      ],
    };
  }
}

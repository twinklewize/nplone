import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/old_entities/comment_entity.dart';
import 'package:n_plus_one/domain/entities/old_entities/contragent_entity.dart';

class TransactionEntity extends Equatable {
  /// лицо, с которым произошла транзакция
  ContragentEntity contragent;

  /// сколько денег было переведено (>0, если вам перевели, <0, если вы)
  double transactionAmountInDollars;

  /// Опубликована ли транзакция
  bool isPublished;

  /// Когда была совершена транзакция
  DateTime whenItWas;

  /// Когда была опубликована транзакция
  DateTime? whenItWasPublished;

  /// Откуда была совершена транзакция
  String whereItWas;

  /// Тип совершенной операции
  String transactionType;

  /// Список прикрепленных файлов
  List<String>? attachmentFiles;

  /// Список оставленных по транзакцией комментариев
  List<CommentEntity> comments;

  TransactionEntity({
    required this.contragent,
    required this.transactionAmountInDollars,
    required this.isPublished,
    required this.whenItWas,
    required this.whereItWas,
    required this.transactionType,
    required this.comments,
    this.whenItWasPublished,
    this.attachmentFiles,
  });

  @override
  List<Object?> get props => [
        contragent,
        comments,
        transactionAmountInDollars,
        isPublished,
        whenItWas,
        whenItWasPublished,
        whereItWas,
        attachmentFiles,
      ];
}

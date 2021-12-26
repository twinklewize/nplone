import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/old_entities/comment_entity.dart';
import 'package:n_plus_one/domain/entities/old_entities/contragent_entity.dart';

class TransactionEntity extends Equatable {
  /// лицо, с которым произошла транзакция
  final ContragentEntity contragent;

  /// сколько денег было переведено (>0, если вам перевели, <0, если вы)
  final double transactionAmountInDollars;

  /// Опубликована ли транзакция
  final bool isPublished;

  /// Когда была совершена транзакция
  final DateTime whenItWas;

  /// Когда была опубликована транзакция
  final DateTime? whenItWasPublished;

  /// Откуда была совершена транзакция
  final String whereItWas;

  /// Тип совершенной операции
  final String transactionType;

  /// Список прикрепленных файлов
  final List<String>? attachmentFiles;

  /// Список оставленных по транзакцией комментариев
  final List<CommentEntity> comments;

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

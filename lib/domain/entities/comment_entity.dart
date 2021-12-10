import 'package:equatable/equatable.dart';

class CommentEntity extends Equatable {
  /// Текст коммнтария
  String text;

  /// Id человека, который оставил комментарий
  String commentatorId;

  /// когдa был оставлен коммент
  DateTime whenItWas;

  CommentEntity({
    required this.text,
    required this.commentatorId,
    required this.whenItWas,
  });

  @override
  List<Object?> get props => [
        text,
        commentatorId,
        whenItWas,
      ];
}

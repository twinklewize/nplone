import 'package:n_plus_one/domain/entities/comment_entity.dart';

class CommentModel extends CommentEntity {
  CommentModel({
    required text,
    required commentatorId,
    required whenItWas,
  }) : super(
          text: text,
          commentatorId: commentatorId,
          whenItWas: whenItWas,
        );

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      // TODO исправить метод !!!!!!!!
      text: json['text'],
      commentatorId: json['commentatorId'],
      whenItWas: DateTime.parse(json['whenItWas']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'commentatorId': commentatorId,
      'whenItWas': whenItWas.toIso8601String(),
    };
  }
}

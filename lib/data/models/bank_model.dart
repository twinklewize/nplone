import 'package:n_plus_one/domain/entities/bank_entity.dart';

class BankModel extends BankEntity {
  BankModel({
    required name,
    required imageUrl,
  }) : super(
          name: name,
          imageUrl: imageUrl,
        );

  factory BankModel.fromJson(Map<String, dynamic> json) {
    return BankModel(
      // TODO исправить метод !!!!!!!!
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
    };
  }
}

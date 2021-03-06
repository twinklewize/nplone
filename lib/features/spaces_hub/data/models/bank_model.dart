import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';

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
      name: json['name'],
      imageUrl: json['imageURL'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
    };
  }
}

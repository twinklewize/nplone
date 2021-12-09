import 'package:n_plus_one/domain/entities/bank_entity.dart';
import '/domain/entities/bank_account_entity.dart';
import '/domain/entities/space_entity.dart';

class SpaceModel extends SpaceEntity {
  SpaceModel({
    required id,
    required privacy,
    required imageUrl,
    required howManyPeopleInSpace,
  }) : super(
          id: id,
          privacy: privacy,
          imageUrl: imageUrl,
          howManyPeopleInSpace: howManyPeopleInSpace,
        );

  factory SpaceModel.fromJson(Map<String, dynamic> json) {
    return SpaceModel(
      // TODO исправить метод !!!!!!!!
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      privacy: json['privacy'] as String == 'recoopenPublicSpacennected'
          ? Privacy.openPublicSpace
          : Privacy.privateSpace,
      howManyPeopleInSpace: json['howManyPeopleInSpace'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'privacy': privacy.toString(),
      'howMuchMoneyInDollars': howManyPeopleInSpace,
    };
  }
}

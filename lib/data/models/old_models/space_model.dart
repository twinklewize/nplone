import 'package:n_plus_one/domain/entities/old_entities/space_entity.dart';

class SpaceModel extends SpaceEntity {
  SpaceModel({
    required id,
    required name,
    required privacy,
    required imageUrl,
    required howManyPeopleInSpace,
  }) : super(
          id: id,
          name: name,
          privacy: privacy,
          imageUrl: imageUrl,
          howManyPeopleInSpace: howManyPeopleInSpace,
        );

  factory SpaceModel.fromJson(Map<String, dynamic> json) {
    return SpaceModel(
      // TODO исправить метод !!!!!!!!
      id: json['id'] as String,
      name: json['name'] as String,
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
      'name': name,
      'imageUrl': imageUrl,
      'privacy': privacy.toString(),
      'howManyPeopleInSpace': howManyPeopleInSpace,
    };
  }
}

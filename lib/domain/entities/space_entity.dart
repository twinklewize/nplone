import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';

class SpaceEntity extends Equatable {
  /// name of this space given from user
  String name;

  /// Unique id of this space
  String id;

  /// Avatar image URL of this space
  String imageUrl;

  /// Avatar image URL of this space
  Privacy privacy;

  /// Avatar image URL of this space
  int howManyPeopleInSpace;

  SpaceEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.privacy,
    required this.howManyPeopleInSpace,
  });

  @override
  List<Object?> get props =>
      [id, imageUrl, privacy, howManyPeopleInSpace, name];
}

enum Privacy {
  openPublicSpace,
  privateSpace,
}

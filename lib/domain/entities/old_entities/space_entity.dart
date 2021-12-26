import 'package:equatable/equatable.dart';

class SpaceEntity extends Equatable {
  /// name of this space given from user
  final String name;

  /// Unique id of this space
  final String id;

  /// Avatar image URL of this space
  final String imageUrl;

  /// Avatar image URL of this space
  final Privacy privacy;

  /// Avatar image URL of this space
  final int howManyPeopleInSpace;

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

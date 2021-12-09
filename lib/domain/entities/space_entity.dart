import 'package:equatable/equatable.dart';

class SpaceEntity extends Equatable {
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
    required this.imageUrl,
    required this.privacy,
    required this.howManyPeopleInSpace,
  });

  @override
  List<Object?> get props => [id, imageUrl, privacy, howManyPeopleInSpace];
}

enum Privacy {
  openPublicSpace,
  privateSpace,
}

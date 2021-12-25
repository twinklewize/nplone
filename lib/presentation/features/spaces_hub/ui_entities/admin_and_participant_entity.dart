class AdminAndParticipantEntity {
  final String imageUrl;
  final String name;
  final String position;
  final String instagramUrl;
  final String linkedInUrl;
  final String facebookInUrl;
  final bool isMe;
  Function()? button;

  AdminAndParticipantEntity({
    required this.imageUrl,
    required this.name,
    required this.instagramUrl,
    required this.linkedInUrl,
    required this.facebookInUrl,
    this.position = '',
    this.isMe = false,
    this.button,
  });
}

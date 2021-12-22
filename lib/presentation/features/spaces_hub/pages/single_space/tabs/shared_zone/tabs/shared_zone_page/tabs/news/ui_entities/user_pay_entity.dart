class UserPayEntity {
  final String imageUrl;
  final String name;
  final double count;
  final double total;
  final bool isMe;

  UserPayEntity({
    required this.imageUrl,
    required this.name,
    this.isMe = false,
    required this.count,
    required this.total,
  });
}

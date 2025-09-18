class UserData {
  final String userId;
  final String email;
  final String fullName;
  final String profilePicture;

  UserData({
    required this.userId,
    required this.email,
    required this.fullName,
    required this.profilePicture,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      userId: json['userId'],
      email: json['email'],
      fullName: json['fullName'],
      profilePicture: json['profilePicture'],
    );
  }
}

part of '_index.dart';

class Userx {
  String uid;
  String email;
  String createdAt;
  bool isPremium;
  String role;
  Userx({
    this.uid = '',
    this.email = '',
    this.createdAt = '',
    this.isPremium = false,
    this.role = '',
  });

  Userx copyWith({
    String? uid,
    String? email,
    String? createdAt,
    bool? isPremium,
    String? role,
  }) {
    return Userx(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      isPremium: isPremium ?? this.isPremium,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'uid': uid});
    result.addAll({'email': email});
    result.addAll({'created_at': createdAt});
    result.addAll({'is_premium': isPremium});
    result.addAll({'role': role});

    return result;
  }

  factory Userx.fromMap(Map<String, dynamic> map) {
    return Userx(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      createdAt: map['created_at'] ?? '',
      isPremium: map['is_premium'] ?? false,
      role: map['role'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Userx.fromJson(String source) => Userx.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Userx(uid: $uid, email: $email, createdAt: $createdAt, isPremium: $isPremium, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Userx &&
        other.uid == uid &&
        other.email == email &&
        other.createdAt == createdAt &&
        other.isPremium == isPremium &&
        other.role == role;
  }

  @override
  int get hashCode {
    return uid.hashCode ^ email.hashCode ^ createdAt.hashCode ^ isPremium.hashCode ^ role.hashCode;
  }
}

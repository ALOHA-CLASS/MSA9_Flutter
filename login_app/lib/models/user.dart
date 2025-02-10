
import 'package:login_app/models/auth.dart';

class User {
  int? no;
  String? id;
  String? username;
  String? password;
  String? name;
  String? email;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? enabled;

  List<Auth>? authList;

  User({
    this.no,
    this.id,
    this.username,
    this.password,
    this.name,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.enabled,
    this.authList = const []
  });

  // User 👩‍💼 ➡ Map 🎁
  Map<String, dynamic> toMap() {
    return {
      'no' : no,
      'id' : id,
      'useranme' : username,
      'password' : password,
      'name' : name,
      'createdAt' : createdAt,
      'updatedAt' : updatedAt,
      'enabled' : enabled,
    };
  }

  // Map 🎁 ➡  User 👩‍💼
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      no: map['no'],
      id: map['id'].toString(),
      username: map['username'],
      password: map['password'],
      name: map['name'],
      email: map['email'],
      createdAt: map['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['createdAt']) : null,
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt']) : null,
      enabled: map['enabled'],
      authList: map['authList'] != null
          ? List<Auth>.from(map['authList'].map((auth) => Auth.fromMap(auth)))
          : [],
    );
  }

}
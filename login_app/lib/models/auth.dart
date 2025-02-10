
class Auth {
  int? no;
  String? username;
  String? auth;

  Auth({
    this.no, 
    this.username,
    this.auth
  });

  // Auth ✨ ➡ Map 🎁
  Map<String, dynamic> toMap() {
    return {
      'no': no,
      'username' : username,
      'auth' : auth
    };
  }
  // Map 🎁 ➡ Auth ✨
  factory Auth.fromMap(Map<String, dynamic> map) {
    return Auth(
      no: map['no'],
      username: map['username'],
      auth: map['auth']
    );
  }
} 
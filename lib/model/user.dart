class User {
  int? id;
  String nama;
  String email;
  String password;

  User(this.nama, this.email, this.password, {this.id});

  User.fromJson(Map<String, dynamic> json) :
      id = json['id'],
      nama = json['nama'],
      email = json['email'],
      password = json['password'];

}
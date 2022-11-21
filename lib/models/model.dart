class Model {
  late String name;
  late String email;
  late String password;
  late String country_code;
  late String phone;

  Model(
    this.name,
    this.email,
    this.password,
    this.country_code,
    this.phone,
  );
  Model.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    email = map['email'] ?? '';
    phone = map['phone'] ?? '';
    password = map['password'] ?? '';
    country_code = map['country_code'] ?? '';
  }
}

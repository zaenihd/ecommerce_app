class UserCreationReq {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  int? gender;
  String? age;

  UserCreationReq({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
  });
}

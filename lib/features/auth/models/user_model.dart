class UserModel {
  double phone;
  UserModel({ required this.phone});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel( phone: json['phone']);
  }

  Map<String, dynamic> toJson() {
    return {'phone': phone};
  }
}

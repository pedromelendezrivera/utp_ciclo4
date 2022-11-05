class UserEntity {
  late String? email;
  late String? name;
  late String? address;
  late String? phone;
  late String? password;
  late bool? isAdmin;
  late String? typeuser;
  

  UserEntity(
      {this.email,
      this.name,
      this.address,
      this.phone,
      this.password,
      this.isAdmin,
      this.typeuser});
}

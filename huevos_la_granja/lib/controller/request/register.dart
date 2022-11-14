class RegisterRequest {
  late String name;
  late String address;
  late String email;
  late String? phone;
  late String password;
  late String typeUser;

  @override
  String toString() {
    return "$name, $address, $email, $phone, $password, $typeUser";
  }
}

import '../entity/user.dart';

class UserRepository {
  final _users = <String, UserEntity>{};

  UserRepository() {
    _users["cesar@email.com"] = UserEntity(
        email: "cesar@email.com",
        name: "Cesar Augusto Diaz Arriaga",
        address: "Cra 1 # 2 - 03, Pereira",
        phone: "3211234567",
        password: "123456",
        isAdmin: true);
    _users["laura@email.com"] = UserEntity(
        email: "laura@email.com",
        name: "Laura Cristina Pacheco",
        address: "Cra 1 # 2 - 05, Pereira",
        phone: "3112223334",
        password: "654321",
        isAdmin: false);
  }

  UserEntity findByEmail(String email) {
    var user = _users[email];

    if (user == null) {
      throw Exception("Usuario no existe");
    }

    return user;
  }
}

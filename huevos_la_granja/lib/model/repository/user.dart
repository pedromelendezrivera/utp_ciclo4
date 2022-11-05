import '../entity/user.dart';

class UserRepository {
  final _users = <String, UserEntity>{};

  UserRepository() {
    _users["jorge@email.com"] = UserEntity(
        email: "jorge@email.com",
        name: "Jorge Mendez",
        address: "Cra 12 # 12 - 03, Pereira",
        phone: "3211234567",
        password: "123456",
        isAdmin: true,
        typeUser: "1");
    _users["ana@email.com"] = UserEntity(
        email: "ana@email.com",
        name: "Ana Maria Rivvera",
        address: "Cra 21 # 21 - 05, Pereira",
        phone: "3112223334",
        password: "123456",
        isAdmin: false,
        typeUser: "2");
    _users["juan@email.com"] = UserEntity(
        email: "juan@email.com",
        name: "Juan Perez",
        address: "Cra 1 # 2 - 05, Pereira",
        phone: "3112223334",
        password: "123456",
        isAdmin: false,
        typeUser: "3");
    _users["pedromelendezrivera@gmail.com"] = UserEntity(
        email: "pedromelendezrivera@gmail.com",
        name: "Pedro Melendez",
        address: "Cra 1 # 2 - 05, Pereira",
        phone: "3112223334",
        password: "123456",
        isAdmin: false,
        typeUser: "1");
  }

  UserEntity findByEmail(String email) {
    var user = _users[email];

    if (user == null) {
      throw Exception("Usuario no existe");
    }

    return user;
  }
}

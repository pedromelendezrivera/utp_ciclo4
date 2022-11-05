import '../model/entity/user.dart';
import '../model/repository/fb_auth.dart';
import '../model/repository/user.dart';
import 'request/login.dart';

class LoginController {
  late final UserRepository _userRepository;
  late final FirebaseAuthenticationRepository _authRepository;

  LoginController() {
    _userRepository = UserRepository();
    _authRepository = FirebaseAuthenticationRepository();
  }

  Future<UserEntity> validateEmailPassword(LoginRequest request) async {
    await _authRepository.signInEmailPassword(request.email, request.password);
    // Consultar el usuario que tenga el correo dado
    var user = _userRepository.findByEmail(request.email);

    return user!;
  }
}

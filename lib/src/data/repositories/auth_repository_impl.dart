import 'dart:async';
import '../../imports/core_imports.dart';
import '../../imports/packages_imports.dart';
import '../models/user_model.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final _authController = StreamController<AppUser?>.broadcast();

  @override
  Stream<AppUser?> get onAuthStateChanged => _authController.stream;

  @override
  FutureEither<AppUser> login({
    required String email,
    required String password,
  }) async {
    final user = AppUser(id: '1', email: email, name: 'User');
    _authController.add(user);
    return right(user);
  }

  @override
  FutureEither<AppUser> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    final user = AppUser(id: '1', email: email, name: name);
    _authController.add(user);
    return right(user);
  }

  @override
  FutureEither<void> forgotPassword({required String email}) async {
    return right(null);
  }

  @override
  FutureEither<void> logout() async {
    _authController.add(null);
    return right(null);
  }

  @override
  FutureEither<AppUser?> checkAuthState() async {
    return right(null);
  }
}

import 'package:arq_app/features/auth/data/models/user_model.dart';
import 'package:arq_app/features/auth/domain/entities/user_entities/user_entities.dart';
import 'package:arq_app/features/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  Future<UserEntities> login(String email, String password) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = result.user;

      if (user == null) {
        throw Exception('Usuario não encontrado');
      }

      return UserModel(
        name: user.displayName,
        email: email,
        nickName: '',
        picture: user.photoURL ?? '',
      );
    } on FirebaseAuthException catch (e) {
      throw Exception('${e.message} Erro ao realizar o login');
    } catch (e) {
      throw Exception('Erro de conexão');
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<UserEntities> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }
}

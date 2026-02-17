import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewmodel {
 
  String errorMessage = '';

  Future<bool> logUser(String email, String senha) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorMessage = 'Usuario não encontrado';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Senha ou e-mail incorretos tente novamente';
      }
      return false;
    } catch (e) {
      errorMessage = 'Erro de conexão';
      return false;
    }
  }
}

final loginProvider = Provider<LoginViewmodel>((ref) {
  return LoginViewmodel();
});

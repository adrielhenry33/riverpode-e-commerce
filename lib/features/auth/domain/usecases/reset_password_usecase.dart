import 'package:arq_app/features/auth/domain/repository/auth_repository.dart';

class ResetPasswordUsecase {
  final IAuthRepository _authRepository;
  ResetPasswordUsecase(this._authRepository);

  Future<void> call(String email) async {
    if (email.isEmpty || !email.contains('@')) {
      throw Exception('Email invalido');
    }
    return _authRepository.resetPassword(email);
  }
}

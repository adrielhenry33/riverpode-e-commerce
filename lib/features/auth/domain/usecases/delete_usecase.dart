import '../repository/auth_repository.dart';

class DeleteAccountUsecase {
  final IAuthRepository repository;

  DeleteAccountUsecase(this.repository);

  Future<void> call() async {
    return await repository.delete();
  }
}

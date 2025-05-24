import 'package:firebase_auth/firebase_auth.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:my_portfolios/data/firebase_service.dart';

abstract class UserRepository {
  Future<Result<UserCredential, FirebaseAuthException>> signIn(
      String email, String password);
  Future<Result<String, Exception>> signOut();
}

class UserRepositoryImpl extends UserRepository {
  final FirebaseAuthentication _auth;

  UserRepositoryImpl.namedPrivate({required FirebaseAuthentication auth})
      : _auth = auth;

  @override
  Future<Result<UserCredential, FirebaseAuthException>> signIn(
      String email, String password) async {
    try {
      var userCredential = await _auth.signIn(email, password);
      return (userCredential != null)
          ? Success(userCredential)
          : Error(Exception('"connection-error"') as FirebaseAuthException);
    } catch (error) {
      return Error(error as FirebaseAuthException);
    }
  }

  @override
  Future<Result<String, Exception>> signOut() async {
    try {
      await _auth.signOut();
      return const Success("Succeeded");
    } catch (error) {
      return Error(Exception(error));
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:my_portfolios/repositories/user_repo.dart';

class UserPreferenceViewmodel extends ChangeNotifier {
  UserRepository userRepository;

  UserPreferenceViewmodel({required this.userRepository});

  Future<Result<UserCredential, FirebaseAuthException>> signIn(
      String mail, String password) {
    return userRepository.signIn(mail, password);
  }

  Future<Result<String, Exception>> signOut() {
    return userRepository.signOut();
  }
}

import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../repositories/auth/auth_repository.dart';
import '../repositories/auth/auth_repository_impl.dart';

class SplashViewModel with ChangeNotifier {

  final AuthRepository _authRepository = AuthRepositoryImpl();

  Future<void> testAPI() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});

    await _authRepository.testAPI();
  }
}
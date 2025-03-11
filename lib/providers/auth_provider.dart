// lib/providers/auth_provider.dart
import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool _isLoading = true;

  bool get isAuthenticated => _isAuthenticated;
  bool get isLoading => _isLoading;

  AuthProvider() {
    checkAuthentication();
  }

  Future<void> checkAuthentication() async {
    _isAuthenticated = await AuthService.isLoggedIn();
    _isLoading = false;
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    bool result = await AuthService.login(email, password);
    _isAuthenticated = result;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> logout() async {
    _isLoading = true;
    notifyListeners();
    await AuthService.logout();
    _isAuthenticated = false;
    _isLoading = false;
    notifyListeners();
  }
}

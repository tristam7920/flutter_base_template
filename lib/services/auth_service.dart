// lib/services/auth_service.dart

// 더 이상 supabase_flutter 패키지를 사용하지 않으므로 관련 import를 제거합니다.
// import 'package:supabase_flutter/supabase_flutter.dart';
// import '../constants/supabase_config.dart';

class AuthService {
  // dummy login: 이메일과 비밀번호가 비어있지 않으면 true를 반환 (실제 로직에 맞게 수정)
  static Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // 네트워크 딜레이 흉내
    return email.isNotEmpty && password.isNotEmpty;
  }

  // dummy 로그인 상태 확인: 기본적으로 false를 반환
  static Future<bool> isLoggedIn() async {
    await Future.delayed(Duration(milliseconds: 500));
    return false;
  }

  // dummy 로그아웃
  static Future<void> logout() async {
    await Future.delayed(Duration(milliseconds: 500));
  }
}

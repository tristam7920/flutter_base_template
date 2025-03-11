// lib/services/auth_service.dart

class AuthService {
  // 더미 로그인: 이메일과 비밀번호가 비어있지 않으면 true를 반환 (실제 로직에 맞게 수정)
  static Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    return email.isNotEmpty && password.isNotEmpty;
  }

  // 더미 로그인 상태 확인: true를 반환하여 사용자가 이미 로그인한 것으로 시뮬레이션
  static Future<bool> isLoggedIn() async {
    await Future.delayed(Duration(milliseconds: 500));
    return true; // 여기서 true로 변경하여 홈 화면이 먼저 뜨게 합니다.
  }

  // 더미 로그아웃
  static Future<void> logout() async {
    await Future.delayed(Duration(milliseconds: 500));
  }
}

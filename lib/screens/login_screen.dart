import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // BottomNavigationBar의 선택된 인덱스 (기본은 가운데(Home)로 설정: index 2)
  int _selectedIndex = 2;

  // 네이버 로그인 더미 함수
  void _loginWithNaver() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("네이버 로그인 기능 구현 예정")),
    );
  }

  // 카카오 로그인 더미 함수
  void _loginWithKakao() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("카카오 로그인 기능 구현 예정")),
    );
  }

  // 구글 로그인 더미 함수
  void _loginWithGoogle() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("구글 로그인 기능 구현 예정")),
    );
  }

  // BottomNavigationBar 탭 처리
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // 예시: 가운데(Home) 버튼이 눌리면 홈 화면으로 이동
    if (index == 2) {
      Navigator.pushReplacementNamed(context, '/home');
    }
    // 다른 탭에 대한 기능도 필요에 따라 추가하세요.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "외부 로그인",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              // 한 줄에 동그라미 형태의 외부 로그인 버튼 3개
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 네이버 로그인 버튼
                  ElevatedButton(
                    onPressed: _loginWithNaver,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      fixedSize: Size(60, 60),
                      backgroundColor: Colors.green,
                    ),
                    child: Icon(Icons.account_circle, size: 30),
                  ),
                  SizedBox(width: 20),
                  // 카카오 로그인 버튼
                  ElevatedButton(
                    onPressed: _loginWithKakao,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      fixedSize: Size(60, 60),
                      backgroundColor: Colors.amber,
                    ),
                    child: Icon(Icons.account_circle, size: 30),
                  ),
                  SizedBox(width: 20),
                  // 구글 로그인 버튼
                  ElevatedButton(
                    onPressed: _loginWithGoogle,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      fixedSize: Size(60, 60),
                      backgroundColor: Colors.red,
                    ),
                    child: Icon(Icons.account_circle, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text("또는 이메일로 로그인"),
              SizedBox(height: 16),
              // 이메일 로그인 관련 위젯을 추가할 수 있습니다.
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "탐색",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "즐겨찾기",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "알림",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "설정",
          ),
        ],
      ),
    );
  }
}

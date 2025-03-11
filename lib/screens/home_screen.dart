import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // BottomNavigationBar의 선택된 인덱스 (중앙(Home) 버튼이 기본 선택: index 2)
  int _selectedIndex = 2;

  // BottomNavigationBar 선택 시 호출되는 함수
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // 추가로, 각 인덱스에 맞는 화면 전환 로직을 여기에 구현할 수 있습니다.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("홈"),
        // 좌측에 로그인 버튼 추가 (아이콘 버튼)
        leading: IconButton(
          icon: Icon(Icons.login),
          onPressed: () {
            // 로그인 화면으로 이동
            Navigator.pushNamed(context, '/login');
          },
        ),
      ),
      body: Column(
        children: [
          // 헤더 영역
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            color: Colors.blue[100],
            child: Text(
              "헤더 영역",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // 본문 영역 (나머지 공간을 채움)
          Expanded(
            child: Center(
              child: Text(
                "본문 영역",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      // 하단 네비게이션 바 (5개의 버튼, 가운데가 홈)
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

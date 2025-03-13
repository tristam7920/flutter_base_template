import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/settings_screen.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);  // 생략하거나 그대로 사용해도 괜찮습니다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Base Template',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      // 최초 실행 시 SplashScreen을 보여줍니다.
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}

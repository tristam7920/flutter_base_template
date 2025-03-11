import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Provider 패키지 import
import 'providers/auth_provider.dart'; // AuthProvider import
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/settings_screen.dart';

// 더미 appTheme 정의 (추후 constants/theme.dart로 분리 가능)
final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Main Frame App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => AuthWrapper(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    if (authProvider.isLoading) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else {
      return authProvider.isAuthenticated ? HomeScreen() : LoginScreen();
    }
  }
}

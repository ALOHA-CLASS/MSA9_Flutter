import 'package:flutter/material.dart';
import 'package:navigation_widget/community/commnunity_screen.dart';
import 'package:navigation_widget/home_screen.dart';
import 'package:navigation_widget/main_screen.dart';
import 'package:navigation_widget/user/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '네비게이션 위젯',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/main'       : (context) => MainScreen(),
        '/home'       : (context) => HomeScreen(),
        '/user'       : (context) => UserScreen(),
        '/commnunity' : (context) => CommnunityScreen()
      },
    );
  }
}
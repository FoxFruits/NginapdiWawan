import 'package:flutter/material.dart';
import 'package:nginap_di_wawan/StartPage/filled_login_page.dart';
import 'package:nginap_di_wawan/StartPage/login_page.dart';
import 'package:nginap_di_wawan/StartPage/registration_page.dart';
import 'package:nginap_di_wawan/StartPage/reset_password_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nginep di Wawan',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/masuk': (context) => FilledLoginPage(title: 'Masuk'),
        '/daftar': (context) => RegistrationPage(),
        '/admin': (context) => FilledLoginPage(title: 'Masuk'),
        '/reset-password': (context) => ResetPWPage()
      },
    );
  }
}
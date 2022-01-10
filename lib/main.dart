import 'package:flutter/material.dart';
import 'package:login_ui_1/change_password_screen.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData.light(),
      home: const ChangePasswordScreen(),
    );
  }
}

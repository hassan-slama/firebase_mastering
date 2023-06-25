import 'package:firebase_mastering/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showloginpage = true;
  void toogleScreens() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage == true) {
      return LoginPage(
        showRegisterPage: toogleScreens,
      );
    } else {
      return RegisterPage(
        showLoginPage: toogleScreens,
      );
    }
  }
}

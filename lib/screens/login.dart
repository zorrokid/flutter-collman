import 'package:flutter/material.dart';
import 'package:auth_lib/auth_lib.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserForm(),
    );
  }
}

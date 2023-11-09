import 'package:auth_lib/auth_lib.dart';
import 'package:collman/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  initializeAuthLib();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  void logIn() {
    Get.to(() => const LogIn());
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const Text('Hello World <3'),
            ElevatedButton(
              onPressed: () => logIn(),
              child: const Text("Log in"),
            ),
          ],
        ),
      ),
    );
  }
}

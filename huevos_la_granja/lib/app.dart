import 'package:flutter/material.dart';

import 'view/pages/auth/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Huevos la Granja",
      home: LoginPage(),
    );
  }
}

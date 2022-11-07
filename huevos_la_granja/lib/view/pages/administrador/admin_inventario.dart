import 'package:flutter/material.dart';

class AdminInventarioPage extends StatelessWidget {
  const AdminInventarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Informes de Inventarios"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'witgets/drawer_administrador.dart';
//import '../widgets/drawer.dart';

class AdministradorPage extends StatelessWidget {
  final String email;
  final String name;

  const AdministradorPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Administrador"),
      ),
      drawer: DrawerWidgetAdministrador(email: email, name: name),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}

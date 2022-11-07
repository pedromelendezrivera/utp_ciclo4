import 'package:flutter/material.dart';
import '../../widgets/drawer_administrador.dart';
import '../../widgets/fondo_menu.dart';

class AdministradorPage extends StatelessWidget {
  final String email;
  final String name;

  const AdministradorPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Administrador"),
      ),
      drawer: DrawerWidgetAdministrador(email: email, name: name),
      body: fondoMenu(),
    );
  }
}

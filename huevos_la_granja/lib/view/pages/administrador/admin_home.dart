import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/fondo_menu.dart';
import '../../widgets/drawer_administrador.dart';

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

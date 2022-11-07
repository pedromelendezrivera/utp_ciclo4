import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/pages/auth/login.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Administrador"),
            IconButton(
              icon: const Icon(Icons.logout),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      drawer: DrawerWidgetAdministrador(email: email, name: name),
      body: fondoMenu(),
    );
  }
}

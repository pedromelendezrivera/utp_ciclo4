import 'package:flutter/material.dart';

import '../../widgets/drawer_administrador.dart';

class AdminInventarioPage extends StatelessWidget {
  const AdminInventarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Informes de Inventarios"),
      ),
      drawer: const DrawerWidgetAdministrador(email: "", name: ""),
    );
  }
}

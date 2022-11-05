import 'package:flutter/material.dart';

import '../../widgets/drawer_administrador.dart';

class AdminVentasPage extends StatelessWidget {
  const AdminVentasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Administrador -Ventas"),
      ),
      drawer: const DrawerWidgetAdministrador(email: "", name: ""),
    );
  }
}

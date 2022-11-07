import 'package:flutter/material.dart';

import '../../widgets/drawer_administrador.dart';

class AdminAjustePage extends StatelessWidget {
  const AdminAjustePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Ajuste de inventario"),
      ),
      drawer: const DrawerWidgetAdministrador(email: "", name: ""),
    );
  }
}

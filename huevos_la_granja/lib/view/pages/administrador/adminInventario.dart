import 'package:flutter/material.dart';

import '../../widgets/drawer_administrador.dart';

//import '../widgets/drawer.dart';

class AdminInventarioPage extends StatelessWidget {
  const AdminInventarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Administrador -Inventario"),
      ),
      drawer: const DrawerWidgetAdministrador(email: "", name: ""),
    );
  }
}

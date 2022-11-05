import 'package:flutter/material.dart';

import '../../widgets/drawer_administrador.dart';

//import '../widgets/drawer.dart';

class AdminAjustePage extends StatelessWidget {
  const AdminAjustePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Administrador -Ajuste"),
      ),
      drawer: const DrawerWidgetAdministrador(email: "", name: ""),
    );
  }
}

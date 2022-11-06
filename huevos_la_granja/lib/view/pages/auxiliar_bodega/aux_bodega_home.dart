import 'package:flutter/material.dart';

import '../../widgets/drawer_auxbodega.dart';
import '../../widgets/fondo_menu.dart';

class AuxBodegaPage extends StatelessWidget {
  final String email;
  final String name;

  const AuxBodegaPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Auxiliar Bodega"),
      ),
      drawer: DrawerWidgetAuxbodega(email: email, name: name),
      body: fondoMenu(),
    );
  }
}

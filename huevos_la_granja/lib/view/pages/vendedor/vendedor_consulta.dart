import 'package:flutter/material.dart';

import 'package:huevos_la_granja/view/widgets/drawer_vendedor.dart';

class VendedorConsultaPage extends StatelessWidget {
  const VendedorConsultaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vendedor - Consulta"),
      ),
      drawer: const DrawerWidgetVendedor(email: "", name: ""),
    );
  }
}
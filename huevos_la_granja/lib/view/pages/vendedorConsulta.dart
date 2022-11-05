import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/pages/witgets/drawer_vendedor.dart';

import 'witgets/drawer.dart';
import 'witgets/drawer_auxbodega.dart';

//import '../widgets/drawer.dart';

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

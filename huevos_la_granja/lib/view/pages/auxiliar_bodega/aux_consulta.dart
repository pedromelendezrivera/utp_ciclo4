import 'package:flutter/material.dart';

import '../../widgets/drawer_auxbodega.dart';

//import '../widgets/drawer.dart';

class AuxConsultaPage extends StatelessWidget {
  const AuxConsultaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auxiliar - Consulta"),
      ),
      drawer: const DrawerWidgetAuxbodega(email: "", name: ""),
    );
  }
}

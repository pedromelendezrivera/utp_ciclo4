import 'package:flutter/material.dart';

import 'witgets/drawer.dart';
import 'witgets/drawer_auxbodega.dart';

//import '../widgets/drawer.dart';

class AuxIngresoPage extends StatelessWidget {
  const AuxIngresoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auxiliar - Ingreso"),
      ),
      drawer: const DrawerWidgetAuxbodega(email: "", name: ""),
    );
  }
}

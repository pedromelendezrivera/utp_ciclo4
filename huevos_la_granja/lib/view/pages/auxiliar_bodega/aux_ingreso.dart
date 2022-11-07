import 'package:flutter/material.dart';

import '../../widgets/drawer_auxbodega.dart';

//import '../widgets/drawer.dart';

class AuxIngresoPage extends StatelessWidget {
  const AuxIngresoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Ingreso de mercancia"),
      ),
      drawer: const DrawerWidgetAuxbodega(email: "", name: ""),
    );
  }
}

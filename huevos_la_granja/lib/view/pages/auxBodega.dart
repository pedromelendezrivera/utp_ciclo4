import 'package:flutter/material.dart';

import 'witgets/drawer_auxbodega.dart';

//import '../widgets/drawer.dart';

class AuxBodegaPage extends StatelessWidget {
  final String email;
  final String name;

  const AuxBodegaPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auxiliar Bodega"),
      ),
      drawer: DrawerWidgetAuxbodega(email: email, name: name),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}

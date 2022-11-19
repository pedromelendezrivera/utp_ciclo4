import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/inventario_bodega.dart';

class AuxConsultaPage extends StatelessWidget {
  const AuxConsultaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Consulta de inventario"),
      ),
      body: inventarioBodega(),
    );
  }
}

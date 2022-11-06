import 'package:flutter/material.dart';
import '../../widgets/drawer_vendedor.dart';
import '../../widgets/fondo_menu.dart';

class VendedorPage extends StatelessWidget {
  final String email;
  final String name;

  const VendedorPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vendedor"),
      ),
      drawer: DrawerWidgetVendedor(email: email, name: name),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: fondoMenu(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/fondo_menu.dart';

import 'widgets/admin_general.dart';

class AdminInventarioPage extends StatelessWidget {
  const AdminInventarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'General',
              ),
              Tab(
                text: 'Tienda',
              ),
              Tab(
                text: 'Bodega',
              ),
            ],
          ),
          backgroundColor: Colors.grey,
          title: const Text("Informes de Inventarios"),
        ),
        body: TabBarView(
          children: [
            inventarioGeneral(),
            fondoMenu(),
            const Text("3°"),
          ],
        ),
      ),
    );
  }
}

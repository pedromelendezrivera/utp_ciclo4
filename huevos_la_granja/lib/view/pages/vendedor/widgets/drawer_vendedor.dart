import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/espacio.dart';

import '../vendedor_consulta.dart';

class DrawerWidgetVendedor extends StatelessWidget {
  final String email;
  final String name;

  const DrawerWidgetVendedor(
      {super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: _header(),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Consulta Inventario'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VendedorConsultaPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }

  Widget _header() {
    // TODO: Consultar los datos de la cabecera
    const image = Icon(Icons.manage_accounts);

    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          child: image,
        ),
        espacio(8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              espacio(8),
              Text(
                email,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

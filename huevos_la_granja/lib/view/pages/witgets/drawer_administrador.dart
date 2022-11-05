import 'package:flutter/material.dart';

import '../adminAjuste.dart';
import '../adminInventario.dart';
import '../adminVentas.dart';
import '../cash_close.dart';
import '../payments.dart';
// import '../pages/cash_close.dart';
// import '../pages/payments.dart';

class DrawerWidgetAdministrador extends StatelessWidget {
  final String email;
  final String name;

  const DrawerWidgetAdministrador(
      {super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: _header(),
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Inventarios'),
            onTap: () {        Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminInventarioPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Ventas'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminVentasPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.supervisor_account),
            title: const Text('Ajuste de Inventario'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminAjustePage(),
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
        const SizedBox(width: 8),
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
              const SizedBox(height: 8),
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

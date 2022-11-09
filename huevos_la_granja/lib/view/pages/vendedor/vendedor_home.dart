import 'package:flutter/material.dart';
import 'widgets/drawer_vendedor.dart';
import '../../widgets/fondo_menu.dart';
import '../auth/login.dart';

class VendedorPage extends StatelessWidget {
  final String email;
  final String name;

  const VendedorPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Vendedor"),
            IconButton(
              icon: const Icon(Icons.logout),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      drawer: DrawerWidgetVendedor(email: email, name: name),
      body: fondoMenu(),
    );
  }
}

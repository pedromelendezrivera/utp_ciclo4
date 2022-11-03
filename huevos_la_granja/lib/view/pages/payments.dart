import 'package:flutter/material.dart';
import 'new_sale.dart';
import 'witgets/drawer.dart';
//import '../widgets/drawer.dart';

class PaymentsPage extends StatelessWidget {
  final String email;
  final String name;

  const PaymentsPage({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    final lista = _listarCobros();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ventas"),
      ),
      drawer: DrawerWidget(email: email, name: name),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cobros",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) => ListTile(
                  leading: const CircleAvatar(),
                  title: Text(lista[index]),
                  subtitle: const Text("Direccion"),
                  trailing: IconButton(
                    icon: const Icon(Icons.phone),
                    onPressed: () {
                      // TODO Realizar la llamada Telefonica
                    },
                  ),
                  onTap: () {
                    // TODO: Ir a la ventana detalle del cobro
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewSalePage(),
            ),
          );
        },
      ),
    );
  }

  List<String> _listarCobros() {
    //TODO: Traer la lista de cobros del dia de la BD

    return List<String>.generate(
      20,
      (index) => "Usuario Compra ${index + 1}",
    );
  }
}

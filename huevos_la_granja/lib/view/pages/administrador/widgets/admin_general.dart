import 'package:flutter/widgets.dart';
import 'package:huevos_la_granja/view/widgets/espacio.dart';

Widget inventarioGeneral() {
  return Center(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          width: 350,
          height: 550,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(),
          ),
          child: Column(children: [
            espacio(20),
            const Text(
              "RESUMEN",
              style: TextStyle(fontSize: 24),
            ),
            espacio(50),
            //Tabla de resumen
            Center(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(),
                ),
                child: const Center(child: Text("Tabla")),
              ),
            )
          ]),
        ),
      ]),
    ),
  );
}

import 'package:flutter/widgets.dart';
import 'package:huevos_la_granja/view/widgets/espacio.dart';

Widget inventarioGeneral() {
  return Center(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          width: 370,
          height: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(),
          ),
          child: Column(children: [
            espacio(20),
            const Text(
              "RESUMEN",
              style: TextStyle(fontSize: 24),
            ),espacio(20),
            //Tabla de resumen
            Container()
          ]),
        ),
      ]),
    ),
  );
}

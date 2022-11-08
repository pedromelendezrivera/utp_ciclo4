import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/espacio.dart';
import 'package:huevos_la_granja/view/widgets/logo_principal.dart';
import 'package:huevos_la_granja/view/widgets/logo_secundario.dart';

Widget fondoMenu() {
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
          child: Column(
            children: [
              espacio(150),
              SizedBox(
                child: logoPrincipal(),
              ),
              espacio(100),
              SizedBox(
                child: logoSecundario(),
              )
            ],
          ),
        ),
      ]),
    ),
  );
}

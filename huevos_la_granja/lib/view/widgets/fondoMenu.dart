import 'package:flutter/material.dart';

Widget fondoMenu() {
  return Column(children: [
    const SizedBox(
      height: 0,
    ),
    Container(
      width: 370,
      height: 580,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/inicio.png',
              width: 200,
              height: 200,
              fit: BoxFit.fitWidth,
              alignment: Alignment.centerRight,
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/pie.png',
              width: 400,
              height: 200,
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    ),
  ]);
}

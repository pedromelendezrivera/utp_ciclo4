import 'package:flutter/material.dart';

Widget inicioAlternativo() {
  return Column(
    children: [
      const Text("O iniciar sesion con"),
      const SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
            child: const Text("Facebook"),
            onPressed: () {},
          ),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
            child: const Text("Google"),
            onPressed: () {},
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
    ],
  );
}

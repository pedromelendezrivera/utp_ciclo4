import 'package:flutter/material.dart';

const _imageUrl = "assets/images/inicio.png";
Widget logoPrincipal() {
  return Column(
    children: [
      const SizedBox(
        height: 40,
      ),
      Image.asset(_imageUrl),
    ],
  );
}

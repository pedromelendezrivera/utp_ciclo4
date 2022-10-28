import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 200,
        ),
        Container(
          width: 300,
          height: 620,
          padding: const EdgeInsets.all(5.0),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 204, 204, 204),
            border: Border.all(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
//            Image.asset("assets/images/pie.png"),
                const SizedBox(
                  height: 50,
                ),
                //       Flexible(
                //        child: SingleChildScrollView(
                //           child: Column(
                Column(
                  children: [
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Correo Electrónico',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Contraseña',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      child: const Text("Iniciar sesion"),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("O iniciar sesion con"),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: const Text("Facebook"),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          child: const Text("Google"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                //     ),
                //   ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset("assets/images/inicio.png"),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

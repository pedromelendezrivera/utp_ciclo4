import 'package:flutter/material.dart';
import '../../../controller/login.dart';
import '../../../controller/request/login.dart';
import '../administrador.dart';
import '../auxBodega.dart';
import '../payments.dart';
import '../vendedor.dart';

class LoginPage extends StatelessWidget {
  final _imageUrl = "assets/images/inicio.png";
  late LoginController _controller;
  late LoginRequest _request;

  LoginPage({super.key}) {
    _controller = LoginController();
    _request = LoginRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 590,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 204, 204, 204),
                border: Border.all(),
              ),
              child: Column(
                children: [
                  _formulario(context),
                  _inicioAlternativo(),
                  _logo(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _campoCorreoElectronico() {
    return TextFormField(
      maxLength: 50,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Correo Electrónico',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "El correo electronico es obligatorio";
        }
        if (!value.contains("@") || !value.contains(".")) {
          return "El correo tiene un formato inválido";
        }
        return null;
      },
      onSaved: (value) {
        _request.email = value!;
      },
    );
  }

  Widget _campoClave() {
    return TextFormField(
      maxLength: 30,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contraseña',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "La contraseña es obligatoria";
        }
        if (value.length < 6) {
          return "Minimo debe contener 6 caracteres";
        }
        return null;
      },
      onSaved: (value) {
        _request.password = value!;
      },
    );
  }

  Widget _inicioAlternativo() {
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
              child: const Text("Facebook"),
              onPressed: () {},
            ),
            ElevatedButton(
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

  Widget _logo() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Image.asset(_imageUrl),
      ],
    );
  }

  Widget _formulario(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          _campoCorreoElectronico(),
          const SizedBox(height: 8),
          _campoClave(),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text(
              "Iniciar sesion",
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                // Validar correo y clave en BD
                try {
//                  var name = _controller.validateEmailPassword(_request);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
//                      builder: (context) => PaymentsPage(
                      builder: (context) => AdministradorPage(
//                      builder: (context) => AuxBodegaPage(
//                      builder: (context) => VendedorPage(
                        email: _request.email,
                        name: "www",
                      ),
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(e.toString())));
                }
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

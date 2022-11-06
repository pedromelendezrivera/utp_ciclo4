import 'package:flutter/material.dart';
import '../../widgets/logo_principal.dart';
import '../../../controller/login.dart';
import '../../../controller/request/login.dart';
import '../administrador/admin_home.dart';
import '../auxiliar_bodega/aux_bodega.dart';
import '../vendedor/vendedor.dart';
import 'widgets/inicio_alternativo.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  late LoginController _controller;
  late LoginRequest _request;

  LoginPage({super.key}) {
    _controller = LoginController();
    _request = LoginRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 204, 204, 204),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: [
                  _formulario(context),
                  inicioAlternativo(),
                  SizedBox(
                    width: 260,
                    child: logoPrincipal(),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _campoCorreoElectronico() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20.0, start: 20.0),
      child: TextFormField(
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
      ),
    );
  }

  Widget _campoClave() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20.0, start: 20.0),
      child: TextFormField(
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
      ),
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
          const SizedBox(height: 8),
          ElevatedButton(
            child: const Text(
              "Iniciar sesion",
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // Validar correo y clave en BD
                try {
                  var userEntityObject =
                      await _controller.validateEmailPassword(_request);
                  if (userEntityObject.typeUser == '1') {
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdministradorPage(
                          email: _request.email,
                          name: "Huevos la Granja",
                        ),
                      ),
                    );
                  } else if (userEntityObject.typeUser == "2") {
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuxBodegaPage(
                          email: _request.email,
                          name: "Huevos la Granja",
                        ),
                      ),
                    );
                  } else {
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VendedorPage(
                          email: _request.email,
                          name: "Huevos la Granja",
                        ),
                      ),
                    );
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(e.toString())));
                }
              }
            },
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

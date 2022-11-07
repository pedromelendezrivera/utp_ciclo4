import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/espacio.dart';
import '../../widgets/logo_principal.dart';
import '../../../controller/login.dart';
import '../../../controller/request/login.dart';
import '../administrador/admin_home.dart';
import '../auxiliar_bodega/aux_bodega_home.dart';
import '../vendedor/vendedor_home.dart';
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
            espacio(40),
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
          espacio(20),
          _campoCorreoElectronico(),
          espacio(8),
          _campoClave(),
          espacio(8),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
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
                          name: userEntityObject.name!, // "Huevos la Granja",
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
                          name: userEntityObject.name!,
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
                          name: userEntityObject.name!,
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
          espacio(8),
        ],
      ),
    );
  }
}

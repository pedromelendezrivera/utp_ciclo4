import 'package:flutter/material.dart';

import '../../../controller/ajusteInventarioController.dart';
import '../../../model/entity/ajusteInventario.dart';
import '../../widgets/espacio.dart';

class AdminAjustePage extends StatelessWidget {
  late final AjusteInventarioEntity _ajusteInventario;
  late final AjusteInventarioController _controller;
  AdminAjustePage({super.key}) {
    _ajusteInventario = AjusteInventarioEntity();
    _controller = AjusteInventarioController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Ajuste de Inventario"),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 550,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  espacio(22),
                  const Text(
                    "Ajuste de Inventario",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  espacio(16),
                  _formulario(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formulario(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(children: [
            _campoTipoProducto(),
          ]),
          espacio(16),
          Row(children: [
            _campoAlmacen(),
          ]),
          espacio(16),
          Row(children: [
            _campoMotivo(),
          ]),
          espacio(16),
          _campoCantidad(),
          espacio(16),
          _campoObservaciones(),
          espacio(16),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
            child: const Text("Guardar", style: TextStyle(fontSize: 24)),
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // Guardar los datos en la BD
                try {
                  await _controller.save(_ajusteInventario);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Ajuste guardado con exito"),
                    ),
                  );

                  // Volver a la pantalla anterior
                  Navigator.pop(context);
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Error: $e"),
                    ),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _campoTipoProducto() {
    var opciones = <String>["A", "AA", "AAA", "EXTRA", "JUMBO", "CRIOLLO"];
    var valor = opciones[1];

    return Expanded(
      child: DropdownButtonFormField(
        value: valor,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Tipo Producto',
        ),
        items: opciones
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
            .toList(),
        onChanged: (value) {
          _ajusteInventario.tipoProducto = value;
        },
      ),
    );
  }

  Widget _campoAlmacen() {
    var opciones = <String>["Bodega", "Tienda"];
    var valor = opciones[1];

    return Expanded(
      child: DropdownButtonFormField(
        value: valor,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Almacen',
        ),
        items: opciones
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
            .toList(),
        onChanged: (value) {
          _ajusteInventario.almancen = value;
        },
      ),
    );
  }

  Widget _campoMotivo() {
    var opciones = <String>["Dañado", "Roto", "Perdido", "Otro"];
    var valor = opciones[1];

    return Expanded(
      child: DropdownButtonFormField(
        value: valor,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Motivo',
        ),
        items: opciones
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
            .toList(),
        onChanged: (value) {
          _ajusteInventario.motivo = value;
        },
      ),
    );
  }

  Widget _campoCantidad() {
    return TextFormField(
      initialValue: "0",
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Cantidad',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Cantidad";
        }
        if (int.parse(value) < 1) {
          return "El valor no es válido";
        }
        return null;
      },
      onSaved: (value) {
        _ajusteInventario.cantidad = int.tryParse(value!);
      },
    );
  }

  Widget _campoObservaciones() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Observaciones: ',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "El campo es obligatorio";
        }
        return null;
      },
      onSaved: (value) {
        _ajusteInventario.observaciones = value!;
      },
    );
  }
}

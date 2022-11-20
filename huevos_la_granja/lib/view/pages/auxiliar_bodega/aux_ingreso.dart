import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/campo_fecha.dart';
import '../../widgets/espacio.dart';

class AuxIngresoPage extends StatelessWidget {
  const AuxIngresoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Ingreso de mercancia"),
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
    //final formKey = GlobalKey<FormState>();

    return Form(
      //key: formKey,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CampoFecha(nombre: "Fecha de Ingreso:"),
          espacio(10),
          _facturaCompra(),
          espacio(10),
          _campoCantidad(),
          espacio(10),
          _campoUbicacion(),
          espacio(10),
          _campoTipoProducto(),
          espacio(10),
          _costoTotal(),
          espacio(10),
          _campoObservaciones(),
          espacio(10),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
            child: const Text("Guardar", style: TextStyle(fontSize: 24)),
            onPressed: () async {
              // if (formKey.currentState!.validate()) {
              //   formKey.currentState!.save();
              //   // Guardar los datos en la BD
              //   try {
              //     await _controller.save(_ajusteInventario);

              //     ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(
              //         content: Text("Ajuste guardado con exito"),
              //       ),
              //     );

              //     // Volver a la pantalla anterior
              //     Navigator.pop(context);
              //   } catch (e) {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(
              //         content: Text("Error: $e"),
              //       ),
              //     );
              //   }
              // }
            },
          ),
        ],
      ),
    );
  }

  Widget _facturaCompra() {
    return TextFormField(
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nº Factura de Compra',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Factura";
        }
        if (int.parse(value) < 1) {
          return "El valor no es válido";
        }
        return null;
      },
      onSaved: (value) {
        //_ajusteInventario.cantidad = int.tryParse(value!);
      },
    );
  }

  Widget _campoCantidad() {
    return TextFormField(
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
        //_ajusteInventario.cantidad = int.tryParse(value!);
      },
    );
  }

  Widget _campoUbicacion() {
    return TextFormField(
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Ubicación',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "ubicacion";
        }
        if (int.parse(value) < 1) {
          return "El valor no es válido";
        }
        return null;
      },
      onSaved: (value) {
        //_ajusteInventario.cantidad = int.tryParse(value!);
      },
    );
  }

  Widget _campoTipoProducto() {
    return TextFormField(
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Tipo de Producto',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "ubicacion";
        }
        if (int.parse(value) < 1) {
          return "El valor no es válido";
        }
        return null;
      },
      onSaved: (value) {
        //_ajusteInventario.cantidad = int.tryParse(value!);
      },
    );
  }

  Widget _costoTotal() {
    return TextFormField(
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Costo Total',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Costo";
        }
        if (int.parse(value) < 1) {
          return "El valor no es válido";
        }
        return null;
      },
      onSaved: (value) {
        //_ajusteInventario.cantidad = int.tryParse(value!);
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
        //_ajusteInventario.observaciones = value!;
      },
    );
  }
}
